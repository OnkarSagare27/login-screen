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
              padding: EdgeInsets.all(50),
              child: Text(
                'Login',
                style: TextStyle(
                    color: Color(0xfffda085),
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
            ),
            MyTextField(fieldName: 'Email', myController: _controller)
          ],
        ),
      ),
    );
  }
}
