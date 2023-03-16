import 'package:flutter/material.dart';

class TBTextField extends StatelessWidget {
  final TextEditingController controller;
  const TBTextField({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
    );
  }
}
