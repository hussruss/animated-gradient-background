# Animated Gradient Background

A Flutter library for creating animated gradient backgrounds.

## Description

This package allows you to create animated gradient backgrounds with customizable colors, stops, alignments, and animation duration.

## Demo

 ![](https://github.com/hussruss/hussruss_public/blob/main/animated-gradient-bg1.gif)
  ![](https://github.com/hussruss/hussruss_public/blob/main/animated-gradient-bg1.gif)  ![](https://github.com/hussruss/hussruss_public/blob/main/animated-gradient-bg1.gif) 

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

| Parameter | Type                | Description                                      |
|-----------|---------------------|--------------------------------------------------|
| `child`   | `Widget`            | The widget to display on top of the gradient background. |
| `colors`  | `List<Color>`       | The list of colors to use in the gradient.       |
| `stops`   | `List<double>?`     | The list of stops for the gradient.              |
| `begin`   | `Alignment`         | The beginning alignment of the gradient.         |
| `end`     | `Alignment`         | The ending alignment of the gradient.            |
| `duration`| `Duration`          | The duration of the gradient animation.          |

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

## Author

Developed by [Huss Russ](https://github.com/hussruss). Connect with me on [LinkedIn](https://www.linkedin.com/in/hussrusse/).