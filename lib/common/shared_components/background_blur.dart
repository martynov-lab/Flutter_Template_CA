import 'dart:ui';
import 'package:flutter/material.dart';
import 'dart:math' as math;

// Background with blurred spots
class BackgroundInterPinWidget extends StatelessWidget {
  final Widget? child;
  final double oneBlurPositionBottom;
  final double oneBlurPositionRight;
  final double oneBlurSize;
  final bool oneBlurIsCircule;
  final Color oneBlureColor;
  final double secondBlurPositionBottom;
  final double secondBlurPositionLeft;
  final double secondBlurSize;
  final bool secondBlurIsCircule;
  final Color secondBlureColor;

  const BackgroundInterPinWidget({
    this.child,
    required this.oneBlurPositionBottom,
    required this.oneBlurPositionRight,
    required this.oneBlurSize,
    required this.oneBlurIsCircule,
    required this.oneBlureColor,
    required this.secondBlurPositionBottom,
    required this.secondBlurPositionLeft,
    required this.secondBlurSize,
    required this.secondBlurIsCircule,
    required this.secondBlureColor,
  });

  @override
  Widget build(BuildContext context) {
    //Color _colorBackground = Theme.of(context).primaryColor;
    double _degreeToRadians(num degree) {
      return (degree * math.pi) / 180.0;
    }

    return Stack(
      children: [
        Positioned(
          bottom: oneBlurPositionBottom,
          right: oneBlurPositionRight,
          child: Opacity(
            opacity: 0.3,
            child: Container(
              width: oneBlurSize,
              height: oneBlurSize,
              decoration: BoxDecoration(
                shape: oneBlurIsCircule ? BoxShape.circle : BoxShape.rectangle,
                color: oneBlureColor,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: secondBlurPositionBottom,
          left: secondBlurPositionLeft,
          child: Transform.rotate(
            angle: _degreeToRadians(8),
            child: Opacity(
              opacity: 0.3,
              child: Container(
                width: secondBlurSize,
                height: secondBlurSize,
                decoration: BoxDecoration(
                  shape:
                      oneBlurIsCircule ? BoxShape.circle : BoxShape.rectangle,
                  color: secondBlureColor,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 50.0, sigmaY: 50.0),
            child: Container(
              color: Colors.black.withOpacity(0.0),
            ),
          ),
        ),
        child!
      ],
    );
  }
}
