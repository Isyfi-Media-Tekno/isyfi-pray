import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sensors_plus/sensors_plus.dart';

import '../ui/settings/config_menu_screen.dart';

/// App-wide shake handling for mobile testing.
///
/// Place this in the `MaterialApp.builder` (above the Navigator) and pass the
/// app's `navigatorKey` — same contract as [RemoteKeyDetector]. Shake the
/// phone twice in quick succession and [ConfigMenuScreen] toggles open: the
/// QR code to open the CMS from another device, plus the debug time-travel
/// buttons (debug builds only, rendered by [ConfigMenuScreen] itself).
///
/// On Android TV there is no accelerometer, so the stream either never emits
/// or errors — both are swallowed and the TV keeps using the remote
/// long-press OK / Menu path ([RemoteKeyDetector]).
class ShakeToConfigListener extends StatefulWidget {
  const ShakeToConfigListener({
    super.key,
    required this.navigatorKey,
    required this.child,
  });

  final GlobalKey<NavigatorState> navigatorKey;
  final Widget child;

  /// g-force above this counts as one shake (gravity = 1.0).
  @visibleForTesting
  static const double shakeThresholdG = 2.7;

  /// Two shakes inside this window trigger the tools page.
  @visibleForTesting
  static const Duration shakeWindow = Duration(milliseconds: 1500);

  /// Cooldown between two openings so one long shake does not stack pages.
  @visibleForTesting
  static const Duration openCooldown = Duration(seconds: 2);

  @override
  State<ShakeToConfigListener> createState() => _ShakeToConfigListenerState();
}

class _ShakeToConfigListenerState extends State<ShakeToConfigListener> {
  StreamSubscription<AccelerometerEvent>? _subscription;
  int _shakeCount = 0;
  DateTime? _lastShakeAt;
  DateTime? _lastOpenedAt;

  @override
  void initState() {
    super.initState();
    try {
      _subscription = accelerometerEventStream(
        samplingPeriod: SensorInterval.uiInterval,
      ).listen(
        _onAccelerometer,
        onError: (_) {
          // No sensor (e.g. Android TV / emulator) — stay silent.
        },
        cancelOnError: false,
      );
    } catch (_) {
      // Plugin unavailable (e.g. widget tests) — stay silent.
      _subscription = null;
    }
  }

  void _onAccelerometer(AccelerometerEvent event) {
    final double gForce =
        sqrt(event.x * event.x + event.y * event.y + event.z * event.z) / 9.81;
    if (gForce < ShakeToConfigListener.shakeThresholdG) return;

    final DateTime now = DateTime.now();
    if (_lastOpenedAt != null &&
        now.difference(_lastOpenedAt!) < ShakeToConfigListener.openCooldown) {
      return;
    }

    if (_lastShakeAt != null &&
        now.difference(_lastShakeAt!) < ShakeToConfigListener.shakeWindow) {
      _shakeCount++;
    } else {
      _shakeCount = 1;
    }
    _lastShakeAt = now;

    if (_shakeCount >= 2) {
      _shakeCount = 0;
      _lastOpenedAt = now;
      _toggleConfigMenu();
    }
  }

  void _toggleConfigMenu() {
    final NavigatorState? navigator = widget.navigatorKey.currentState;
    if (navigator == null) return;

    if (navigator.canPop()) {
      navigator.pop();
    } else {
      navigator.push(
        MaterialPageRoute<void>(
          builder: (_) => const ConfigMenuScreen(),
        ),
      );
    }
  }

  @override
  void dispose() {
    _subscription?.cancel();
    _subscription = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
