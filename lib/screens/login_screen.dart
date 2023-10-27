import 'package:flutter/material.dart';
import 'package:login_screen/widgets/curvePat.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 31, 49, 73),
              Color.fromARGB(255, 22, 33, 51)
            ], // Adjust colors as per your preference
          ),
        ),
        child: Column(
          children: [
            CustomClipPathContainer(),
          ],
        ),
      ),
    );
  }
}
