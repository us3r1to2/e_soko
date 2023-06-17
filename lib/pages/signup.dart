import 'package:e_soko/pages/signin.dart';
import 'package:flutter/material.dart';
import 'package:e_soko/components/sambutton.dart';
import 'package:e_soko/components/samtextfield.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  final confirmPasswordTextController = TextEditingController();

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
                  "Fill to create an account",
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
                SamTextField(
                  controller: confirmPasswordTextController,
                  labelText: 'Confirm Password',
                  hintText: 'Repeat your password',
                  obscureText: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                //Buttons: Sign In & Sign Up
                SamButton(onTap: () {}, text: 'Sign Up'),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have an account?'),
                    const SizedBox(
                      width: 3,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignInPage()));
                      },
                      child: Text(
                        'Sign In now!',
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
