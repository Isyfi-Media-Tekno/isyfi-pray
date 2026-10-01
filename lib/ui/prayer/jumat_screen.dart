import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/widgets/background_image.dart';

/// Friday khutbah screen (`AppStatus.jumatMode`).
///
/// Shown from the Jumat adzan until the end of the khutbah window. Like the
/// other prayer screens it is a glass card over the background image, but its
/// only content is the universal "keep silent" pictogram: no talking and no
/// ringing phones while the khatib is speaking.
class JumatScreen extends StatelessWidget {
  const JumatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

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
                      child: FractionallySizedBox(
                        widthFactor: 0.5,
                        heightFactor: 0.62,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white.withValues(alpha: 0.08),
                                blurRadius: 90,
                                spreadRadius: 40,
                              ),
                            ],
                          ),
                          child: SvgPicture.asset(
                            'assets/images/quiet_shush.svg',
                            semanticsLabel: 'Mohon tenang, jangan berbicara '
                                'dan matikan nada handphone',
                            fit: BoxFit.contain,
                            colorFilter: const ColorFilter.mode(
                              Colors.white,
                              BlendMode.srcIn,
                            ),
                          ),
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
