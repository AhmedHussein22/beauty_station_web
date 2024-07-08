import 'package:flutter/material.dart';

class GradientWidget extends StatelessWidget {
  final Widget child;
  final Gradient gradient;
  const GradientWidget({required this.child, required this.gradient, super.key});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: child,
    );
  }
}
