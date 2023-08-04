import 'package:flutter/material.dart';


class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return const Text(
      'cool',
      style: TextStyle(color: Colors.amber, fontSize: 24),
    );
  }
}
