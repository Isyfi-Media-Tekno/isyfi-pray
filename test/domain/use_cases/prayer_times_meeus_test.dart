import 'package:flutter_test/flutter_test.dart';
import 'package:jam_sholat_tv/domain/use_cases/prayer_times_meeus.dart';

void main() {
  const expected = {
    '2026-01-01': ['04:19', '05:39', '12:00', '15:26', '18:14', '19:29'],
    '2026-06-30': ['04:42', '06:00', '12:00', '15:21', '17:53', '19:07'],
    '2026-10-21': ['04:13', '05:26', '11:41', '14:50', '17:49', '18:59'],
  };

  test('matches the Kemenag Jakarta reference table exactly', () {
    for (final entry in expected.entries) {
      final parts = entry.key.split('-').map(int.parse).toList();
      final times = PrayerTimesMeeus.compute(
        year: parts[0],
        month: parts[1],
        day: parts[2],
      );

      expect(times.values.toList(), entry.value, reason: entry.key);
    }
  });
}
