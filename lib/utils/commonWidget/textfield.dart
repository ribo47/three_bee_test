import 'package:flutter/material.dart';

class TBTextField extends StatelessWidget {
  final TextEditingController controller;
  final bool isPassword;
  const TBTextField({Key? key, required this.controller, this.isPassword = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),)
      ),
      obscureText: isPassword,
      enableSuggestions: !isPassword,
      autocorrect: !isPassword,
      controller: controller,
    );
  }
}
