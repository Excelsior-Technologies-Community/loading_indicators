import 'dart:math';

import 'package:flutter/material.dart';

class DotsLoader extends StatelessWidget {

  final AnimationController controller;
  final double size;
  final Color color;

  const DotsLoader({
    required this.controller,
    required this.size,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {

    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {

        return Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(3, (index) {

            double opacity =
                (sin(controller.value * 2 * pi + index) + 1) / 2;

            return Padding(
              padding: const EdgeInsets.all(4),
              child: Opacity(
                opacity: opacity,
                child: Container(
                  width: size / 4,
                  height: size / 4,
                  decoration: BoxDecoration(
                    color: color,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            );
          }),
        );
      },
    );
  }
}