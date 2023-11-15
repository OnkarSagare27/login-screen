import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
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
      cursorColor: Color(0xfffda085),
      controller: myController,
      decoration: InputDecoration(
          labelText: fieldName,
          prefixIcon: Icon(myIcon, color: prefixIconColor),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xfffda085))),
          disabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xfffda085))),
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xfffda085))),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xfffda085)),
          ),
          labelStyle:
              const TextStyle(color: Colors.grey, fontWeight: FontWeight.w600)),
    );
  }
}
