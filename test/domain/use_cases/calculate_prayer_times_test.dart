import 'package:flutter_test/flutter_test.dart';
import 'package:jam_sholat_tv/domain/models/app_config.dart';
import 'package:jam_sholat_tv/domain/use_cases/calculate_prayer_times.dart';

void main() {
  const calculator = CalculatePrayerTimes();

  /// 2026-08-16 is a Sunday.
  final now = DateTime(2026, 8, 16, 10, 0, 0);

  int toMinutes(String t) {
    final p = t.split(':');
    return int.parse(p[0]) * 60 + int.parse(p[1]);
  }

  /// Forward distance in minutes from [a] to [b] on a 24h circle.
  int circularGap(int a, int b) => (b - a + 1440) % 1440;

  test('returns exactly the canonical keys in insertion order', () {
    final result = calculator(now: now);

    expect(result.keys.toList(), [
      'Subuh',
      'Syuruq',
      'Dzuhur',
      'Ashar',
      'Maghrib',
      'Isya',
    ]);
  });

  test('every value is a valid HH:mm string', () {
    final result = calculator(now: now);

    for (final v in result.values) {
      expect(RegExp(r'^\d{2}:\d{2}$').hasMatch(v), isTrue, reason: v);
    }
  });

  test('prayers appear in chronological order around the day', () {
    // Times are placed on the configured WIB wall clock (never `.toLocal()`),
    // so the sequence is stable regardless of the test machine's time zone.
    final result = calculator(now: now);
    final minutes = result.values.map(toMinutes).toList();

    for (var i = 0; i < minutes.length; i++) {
      final gap =
          circularGap(minutes[i], minutes[(i + 1) % minutes.length]);
      expect(gap, greaterThan(0));
      expect(gap, lessThan(720));
    }
  });

  test('is deterministic for the same instant', () {
    expect(calculator(now: now), calculator(now: now));
  });

  test('matches the Kemenag Jakarta reference table exactly', () {
    // Values published by Bimas Islam (Kemenag) for Jakarta. The calculator
    // must reproduce them minute-for-minute — no tolerance.
    const reference = {
      '2026-01-01': ['04:19', '05:39', '12:00', '15:26', '18:14', '19:29'],
      '2026-06-30': ['04:42', '06:00', '12:00', '15:21', '17:53', '19:07'],
      '2026-10-21': ['04:13', '05:26', '11:41', '14:50', '17:49', '18:59'],
    };

    for (final entry in reference.entries) {
      final parts = entry.key.split('-').map(int.parse).toList();
      final result = calculator(
        now: DateTime(parts[0], parts[1], parts[2], 10, 0),
      );

      expect(result.values.toList(), entry.value, reason: entry.key);
    }
  });

  test('uses the configured time zone, not the device clock zone', () {
    final wib = calculator(now: now);
    final wita = calculator(
      now: now,
      config: AppConfig.fromJson({'tzOffsetHours': 8}),
    );

    // One hour of zone offset shifts every wall-clock entry by exactly 60
    // minutes (the ihtiyat/rounding step is unchanged).
    for (final key in wib.keys) {
      expect(toMinutes(wita[key]!) - toMinutes(wib[key]!), 60, reason: key);
    }
  });

  test('prayer times shift only slightly between consecutive days', () {
    final day1 = calculator(now: DateTime(2026, 8, 16, 10, 0));
    final day2 = calculator(now: DateTime(2026, 8, 17, 10, 0));

    for (final key in day1.keys) {
      final diff = (toMinutes(day2[key]!) - toMinutes(day1[key]!)).abs();
      expect(diff, lessThan(5), reason: '$key drift');
    }
  });

  test('method sanity: maghrib→isya and dzuhur→ashar gaps are plausible', () {
    final result = calculator(now: now);

    final ishaMaghrib = circularGap(
      toMinutes(result['Maghrib']!),
      toMinutes(result['Isya']!),
    );
    expect(ishaMaghrib, inInclusiveRange(45, 120));

    final asharDzuhur = circularGap(
      toMinutes(result['Dzuhur']!),
      toMinutes(result['Ashar']!),
    );
    expect(asharDzuhur, inInclusiveRange(90, 240));
  });

  test('config ihtiyat overrides shift only the affected prayer', () {
    final defaults = calculator(now: now);
    final custom = calculator(
      now: now,
      config: AppConfig.fromJson({'ihtiyat': {'subuh': 12}}),
    );

    // Default subuh ihtiyat is 2 minutes; 12 is +10 minutes.
    expect(
      toMinutes(custom['Subuh']!) - toMinutes(defaults['Subuh']!),
      10,
    );
    // Other prayers are untouched by an ihtiyat change.
    expect(custom['Dzuhur'], defaults['Dzuhur']);
    expect(custom['Maghrib'], defaults['Maghrib']);
    expect(custom['Isya'], defaults['Isya']);
  });

  test('Muhammadiyah (18°) Subuh is later than Kemenag (20°)', () {
    final kemenag = calculator(now: now);
    final muhammadiyah = calculator(
      now: now,
      config: AppConfig.fromJson({'calculationMethod': 'muhammadiyah'}),
    );

    // A larger fajr angle means the sun sits deeper below the horizon at
    // Subuh, so Kemenag's 20° makes Subuh earlier than Muhammadiyah's 18°.
    // Both methods use Isya 18°, so Isya is unchanged.
    expect(
      toMinutes(muhammadiyah['Subuh']!),
      greaterThan(toMinutes(kemenag['Subuh']!)),
    );
    expect(muhammadiyah['Isya'], kemenag['Isya']);
  });

  test('hanafi madhab pushes Ashar later than shafi', () {
    final shafi = calculator(now: now);
    final hanafi = calculator(
      now: now,
      config: AppConfig.fromJson({'madhab': 'hanafi'}),
    );

    expect(toMinutes(hanafi['Ashar']!), greaterThan(toMinutes(shafi['Ashar']!)));
  });

  test('a distant location shifts the schedule', () {
    final depok = calculator(now: now);
    final medan = calculator(
      now: now,
      config: AppConfig.fromJson({'latitude': 3.60, 'longitude': 98.67}),
    );

    expect(medan, isNot(equals(depok)));
  });

  test('elevation makes Syuruq earlier and Maghrib later, not Subuh/Isya', () {
    final seaLevel = calculator(now: now);
    final elevated = calculator(
      now: now,
      config: AppConfig.fromJson({'useElevation': true, 'elevationMeters': 1000}),
    );

    // The horizon dip (here ~1.02°) moves the rising/setting edges outward;
    // Subuh/Isya keep the published sea-level depression angles.
    expect(
      toMinutes(elevated['Syuruq']!),
      lessThan(toMinutes(seaLevel['Syuruq']!)),
    );
    expect(
      toMinutes(elevated['Maghrib']!),
      greaterThan(toMinutes(seaLevel['Maghrib']!)),
    );
    expect(elevated['Subuh'], seaLevel['Subuh']);
    expect(elevated['Isya'], seaLevel['Isya']);
  });

  test('useElevation without a positive elevation is a no-op', () {
    final base = calculator(now: now);
    final toggled = calculator(
      now: now,
      config: AppConfig.fromJson({'useElevation': true, 'elevationMeters': 0}),
    );

    expect(toggled, base);
  });

  test('stored elevation is a no-op while useElevation is off', () {
    final base = calculator(now: now);
    final stored = calculator(
      now: now,
      config: AppConfig.fromJson({'elevationMeters': 1000}),
    );

    expect(stored, base);
  });
}
