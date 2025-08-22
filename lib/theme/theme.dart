import 'package:flutter/material.dart';

class AppTheme {
  // Static Theme Data for Dark Theme
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.transparent, // Transparent for gradient
    primaryColor: Colors.blueGrey,
    textTheme: const TextTheme(
      displayLarge: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
      bodyLarge: TextStyle(color: Colors.white70),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
  );

  // Function to apply Animated Gradient Background
  static Widget animatedGradientBackground(Widget child) {
    return AnimatedGradientWrapper(child: child); // Reusable Wrapper
  }
}

// Custom Widget for Animated Gradient Background
class AnimatedGradientWrapper extends StatefulWidget {
  final Widget child;

  const AnimatedGradientWrapper({required this.child, super.key});

  @override
  _AnimatedGradientWrapperState createState() => _AnimatedGradientWrapperState();
}

class _AnimatedGradientWrapperState extends State<AnimatedGradientWrapper>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 4), // Animation Duration
      vsync: this,
    )..repeat(); // Repeats the animation infinitely
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.lerp(Colors.blue, Colors.purple, _controller.value)!,
                Color.lerp(Colors.purple, Colors.red, _controller.value)!,
              ],
            ),
          ),
          child: widget.child, // Place content on top of the gradient
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}