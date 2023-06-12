import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'e-Soko',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            )
                .animate()
                .fade(begin: .1, end: .8, duration: 1500.ms)
                .slideY()
                .tint(color: Colors.green[900])
                .then()
                .shake(delay: 250.ms, duration: 250.ms)
                .tint(color: Colors.black),
            Lottie.network(
              'https://assets5.lottiefiles.com/packages/lf20_K0864uP6eC.json',
              width: 125,
              height: 125,
              repeat: false,
              // onLoaded: (composition) {
              //   // When the animation is loaded, navigate to the next page.
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) => const SignInPage()),
              //   );
              // }
            ),
            const Text('Shopping made easier.')
                .animate()
                .fade(begin: .1, end: .8, duration: 2000.ms)
                .slide()
          ],
        ),
      ),
    );
  }
}
