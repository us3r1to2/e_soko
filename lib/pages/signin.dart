import 'package:flutter/material.dart';
import 'package:e_soko/pages/signup.dart';
import 'package:e_soko/components/sambutton.dart';
import 'package:e_soko/components/samtextfield.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Title text
                Text(
                  "Welcome Back! You've been missed.",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.onBackground,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'icons/icon.png',
                  height: 75,
                  width: 75,
                ).animate().slideX(duration: 800.ms, delay: 200.ms),
                const SizedBox(
                  height: 20,
                ),
                //Text Fields: Email & Password
                SamTextField(
                  controller: emailTextController,
                  labelText: 'Email Address',
                  hintText: 'Enter your email address',
                  obscureText: false,
                ),
                SamTextField(
                  controller: passwordTextController,
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  obscureText: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                //Buttons: Sign In & Sign Up
                SamButton(onTap: () {}, text: 'Sign In'),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Not registered yet?'),
                    const SizedBox(
                      width: 3,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpPage()));
                      },
                      child: Text(
                        'Sign Up now!',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: theme.colorScheme.primary,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
