import 'package:flutter/material.dart';
import 'package:login_screen/widgets/curvePat.dart';
import 'package:login_screen/widgets/text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _controller = TextEditingController();
  bool? isBoxChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomClipPathContainer(),
            const Padding(
              padding: EdgeInsets.fromLTRB(30, 50, 30, 50),
              child: Text(
                'Login',
                style: TextStyle(
                    color: Color(0xfffda085),
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 15),
              child: CustomTextField(
                  fieldName: 'Email', myController: _controller),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
              child: CustomTextField(
                  myIcon: Icons.password_rounded,
                  fieldName: 'Password',
                  myController: _controller),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Checkbox(
                    activeColor: Color(0xfffda085),
                    value: isBoxChecked,
                    onChanged: (value) {
                      setState(
                        () {
                          isBoxChecked = value;
                        },
                      );
                    },
                  ),
                  const Text(
                    'Remember me',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  debugPrint('Login Pressed');
                },
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
                child: Ink(
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xfffda085),
                          Color(0xfffda085),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(50)),
                  child: Container(
                    height: 40,
                    width: 140,
                    alignment: Alignment.center,
                    child: const Text(
                      'Login',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
              child: Center(
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
