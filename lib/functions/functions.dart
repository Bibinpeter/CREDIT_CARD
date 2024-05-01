 // glassmorphism_util.dart

import 'package:creditcard/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
 
class GlassmorphismUtil {
  static getGlassmorphismConfig({bool useGlassMorphism = true, bool isLightTheme = true}) {
    if (!useGlassMorphism) {
      return null;
    }

    final LinearGradient gradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: <Color>[Colors.grey.withAlpha(50), Colors.grey.withAlpha(50)],
      stops: const <double>[0.3, 0],
    );

    return isLightTheme
        ? Glassmorphism(blurX: 8.0, blurY: 16.0, gradient: gradient)
        : Glassmorphism.defaultConfig();
  }
}

class GradientContainer extends StatelessWidget {
  final Widget child;
  final Function()? onTap;

  const GradientContainer({
    Key? key,
    required this.child,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: ButtonColors.gradientColors,
            begin: const Alignment(-1, -3),
            end: const Alignment(1, 1),
          ),
          borderRadius: const BorderRadius.all(Radius.circular(19)),
        ),
        padding: const EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        child: child,
      ),
    );
  }
}
