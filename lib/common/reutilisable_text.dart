import 'package:flutter/material.dart';

class Reutilisable extends StatelessWidget {
  const Reutilisable({super.key, required this.text, required this.style});
  final String text;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      softWrap: false,
      maxLines: 1,
      textAlign: TextAlign.left,
      style: style,
    );
  }
}
