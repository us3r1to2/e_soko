import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';

import 'signin.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'e-Soko',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            )
                .animate()
                .fade(begin: .1, end: .8, duration: 2500.ms)
                .slideY()
                .tint(color: Colors.green[900])
                .then()
                .shake(delay: 250.ms, duration: 250.ms)
                .tint(color: Colors.black),
            GestureDetector(
              child: Lottie.asset(
                'assets/groceries.json',
                width: 125,
                height: 125,
                fit: BoxFit.fill,
                repeat: false,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignInPage()));
              },
            ),
            const Text('Tap the basket to start')
                .animate()
                .fade(begin: .1, end: .8, duration: 2000.ms)
                .slide(),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
