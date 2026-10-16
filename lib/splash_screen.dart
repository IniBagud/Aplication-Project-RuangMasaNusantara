import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    _opacityAnimation = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween(begin: 0.0, end: 1.0),
        weight: 30,
      ), // Fade In
      TweenSequenceItem(tween: Tween(begin: 1.0, end: 1.0), weight: 40), // Hold
      TweenSequenceItem(
        tween: Tween(begin: 1.0, end: 0.0),
        weight: 30,
      ), // Fade Out
    ]).animate(_controller);

    _controller.forward();

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.pushReplacementNamed(context, '/menu');
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/gambar/Background.png',
            ), // Ganti dengan nama file backgroundmu
            fit: BoxFit.cover,
          ),
        ),

        child: Center(
          child: FadeTransition(
            opacity: _opacityAnimation,
            child: Transform.translate(
              offset: Offset(0, -60), // Geser ke atas sikit
              child: Image.asset(
                'assets/gambar/LOGO_RUANG_MASA2_1.png', // logo
                width: 400,
                height: 400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
