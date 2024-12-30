# Animated Gradient Background

A Flutter library for creating animated gradient backgrounds.

## Features

- Animate the hue of gradient colors over time.
- Customize the gradient with multiple colors, stops, and alignments.
- Control the animation duration.

## Getting Started

To use this package, add `animated_gradient_background` as a dependency in your `pubspec.yaml` file.

```yaml
dependencies:
  animated_gradient_background: 0.0.1
```

## Usage

Import the package in your Dart file:

```dart
import 'package:animated_gradient_background/animated_gradient_background.dart';
```

Wrap your widget with `AnimatedGradientBackground`:

```dart
AnimatedGradientBackground(
  colors: [Colors.red, Colors.blue, Colors.green],
  child: YourWidget(),
)
```

## Parameters

- `child`: The widget to display on top of the gradient background.
- `colors`: The list of colors to use in the gradient.
- `stops`: The list of stops for the gradient.
- `begin`: The beginning alignment of the gradient.
- `end`: The ending alignment of the gradient.
- `duration`: The duration of the gradient animation.

## Example

```dart
import 'package:flutter/material.dart';
import 'package:animated_gradient_background/animated_gradient_background.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: AnimatedGradientBackground(
          colors: [Colors.red, Colors.blue, Colors.green],
          child: Center(
            child: Text(
              'Hello, World!',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.