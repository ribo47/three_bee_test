import 'package:flutter/material.dart';
import 'package:three_bee_test/utils/theme.dart';

class TBButton extends StatelessWidget {
  final String text;
  final VoidCallback cta;

  const TBButton({Key? key, required this.text, required this.cta}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: TBTheme().globalTheme.textTheme.button,
        ),
      ),
    );
  }
}
