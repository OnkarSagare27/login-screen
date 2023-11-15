import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    required this.fieldName,
    required this.myController,
    this.myIcon = Icons.email,
    this.prefixIconColor = const Color(0xfffda085),
  });
  final TextEditingController myController;
  final String fieldName;
  final IconData myIcon;
  final Color prefixIconColor;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      decoration: InputDecoration(
          labelText: fieldName,
          prefixIcon: Icon(myIcon, color: prefixIconColor),
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xfffda085)),
          ),
          labelStyle: const TextStyle(color: Colors.grey)),
    );
  }
}
