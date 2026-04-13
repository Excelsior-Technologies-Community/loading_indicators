import 'package:flutter/material.dart';

class SpinLoader extends StatelessWidget {
  final double size;
  final Color color;
  final double strokeWidth;

  const SpinLoader({
    super.key,
    required this.size,
    required this.color,
    required this.strokeWidth,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: 1),
      duration: const Duration(seconds: 1),
      builder: (context, value, child) {
        return Transform.rotate(
          angle: value * 6.28,
          child: child,
        );
      },
      child: SizedBox(
        height: size,
        width: size,
        child: CircularProgressIndicator(
          strokeWidth: strokeWidth,
          color: color,
        ),
      ),
    );
  }
}