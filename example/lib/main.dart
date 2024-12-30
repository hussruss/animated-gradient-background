import 'package:animated_gradient_background/animated_gradient_background.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Animated Gradient Background',
      home: App(),
    );
  }
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  List<Color> _colors = [const Color.fromARGB(255, 40, 113, 214), Colors.black];

  void _changeColors() {
    setState(() {
      _colors = [
        Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
        Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedGradientBackground(
        colors: _colors,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const FlutterLogo(
                size: 250,
                style: FlutterLogoStyle.horizontal,
              ),
              const Text(
                'Gradient animation background',
                textAlign: TextAlign.center, // Center the title
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10), // Add space between title and description
              const Text(
                'This is an example of an animated gradient background in Flutter.',
                textAlign: TextAlign.center, // Center the description
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white70,
                ),
              ),
              const SizedBox(height: 40), // Add space between description and button
              ElevatedButton(
                onPressed: _changeColors,
                style: _buttonStyle(),
                child: Icon(Icons.autorenew, color: _colors[0], size: 25), // Changed text to icon
              ),
            ],
          ),
        ),
      ),
    );
  }

  ButtonStyle _buttonStyle() {
    return const ButtonStyle(
      shape: WidgetStatePropertyAll(
        CircleBorder(),
      ),
      padding: WidgetStatePropertyAll(
        EdgeInsets.all(15), 
      ),
      backgroundColor: WidgetStatePropertyAll(
        Colors.white,
      ),
    );
  }
}
