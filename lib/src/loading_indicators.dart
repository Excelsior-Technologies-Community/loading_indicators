import 'package:flutter/material.dart';
import 'package:flutter_loading_indicators/flutter_loading_indicators.dart';
import 'loader_type.dart';

class LoadingIndicator extends StatefulWidget {
  final LoaderType type;
  final double size;
  final Color color;
  final double strokeWidth;

  const LoadingIndicator({
    super.key,
    required this.type,
    required this.size,
    required this.color,
    required this.strokeWidth,
  });

  @override
  State<LoadingIndicator> createState() => _LoadingIndicatorState();
}

class _LoadingIndicatorState extends State<LoadingIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    switch (widget.type) {
      case LoaderType.dots:
        return DotsLoader(
          controller: controller,
          size: widget.size,
          color: widget.color,
        );

      case LoaderType.progressBar:
        return SizedBox(
          width: widget.size,

          child: LinearProgressIndicator(
            color: widget.color,
            minHeight: widget.strokeWidth,
          ),
        );
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
