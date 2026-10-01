import 'dart:ui';

import 'package:flutter/material.dart';

import '../../core/widgets/background_image.dart';

/// Friday khutbah screen (`AppStatus.jumatMode`).
///
/// Shown from the Jumat adzan until the end of the khutbah window. Like the
/// other prayer screens it is a glass card over the background image, with two
/// signage pictograms as its only content:
///
/// - left: a red prohibition sign over a speaking head — no talking;
/// - right: a red-ringed "finger on the lips" sign — keep silent.
///
/// The pictograms are transparent PNGs, so the blurred background shows
/// through the white silhouette inside each sign.
class JumatScreen extends StatelessWidget {
  const JumatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double signSize = screenSize.height * 0.5;

    return Scaffold(
      body: Stack(
        children: [
          const BackgroundImage(),
          Center(
            child: SizedBox(
              width: screenSize.width * 0.9,
              height: screenSize.height * 0.85,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.12),
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Colors.white.withValues(alpha: 0.2),
                        width: 1.5,
                      ),
                    ),
                    child: Center(
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              'assets/images/no_talking.png',
                              width: signSize,
                              height: signSize,
                              fit: BoxFit.contain,
                              filterQuality: FilterQuality.medium,
                            ),
                            SizedBox(width: signSize * 0.14),
                            Image.asset(
                              'assets/images/keep_silent.png',
                              width: signSize,
                              height: signSize,
                              fit: BoxFit.contain,
                              filterQuality: FilterQuality.medium,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
