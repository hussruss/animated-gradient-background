library animated_gradient_background;

import 'package:flutter/material.dart';

/// A widget that animates a gradient background.
class AnimatedGradientBackground extends StatefulWidget {
  /// The child widget to display on top of the gradient background.
  final Widget child;

  /// The list of colors to use in the gradient.
  final List<Color> colors;

  /// The list of stops for the gradient.
  final List<double>? stops;

  /// The beginning alignment of the gradient.
  final Alignment begin;

  /// The ending alignment of the gradient.
  final Alignment end;

  /// The duration of the gradient animation.
  final Duration duration;

  /// Creates an [AnimatedGradientBackground] widget.
  const AnimatedGradientBackground({
    super.key,
    required this.child,
    required this.colors,
    this.stops,
    this.begin = Alignment.topLeft,
    this.end = Alignment.bottomRight,
    this.duration = const Duration(seconds: 5),
  })  : assert(colors.length > 1,
            'At least two colors are required for the gradient.'),
        assert(stops == null || stops.length == colors.length,
            'The stops list must have the same length as the colors list.');

  @override
  _AnimatedGradientBackgroundState createState() =>
      _AnimatedGradientBackgroundState();
}

class _AnimatedGradientBackgroundState extends State<AnimatedGradientBackground>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );

    _animation = Tween<double>(begin: 0.0, end: 45.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  /// Adjusts the hue of a given [color] by [degrees].
  Color _adjustHue(Color color, double degrees) {
    final hsv = HSVColor.fromColor(color);
    final newHue = (hsv.hue + degrees) % 360;
    return hsv.withHue(newHue).toColor();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: widget.begin,
              end: widget.end,
              colors: widget.colors
                  .map((color) => _adjustHue(color, _animation.value))
                  .toList(),
              stops: widget.stops,
            ),
          ),
          child: widget.child,
        );
      },
    );
  }
}