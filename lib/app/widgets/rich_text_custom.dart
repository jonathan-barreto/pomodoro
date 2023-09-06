import 'package:flutter/material.dart';

class RichTextCustom extends StatelessWidget {
  final String minutes, seconds;

  const RichTextCustom({
    super.key,
    required this.minutes,
    required this.seconds,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: minutes,
        style: const TextStyle(
          fontSize: 50,
          color: Color(0xff333333),
          fontWeight: FontWeight.bold,
        ),
        children: [
          const TextSpan(
            text: ':',
            style: TextStyle(
              fontSize: 50,
              color: Color(0xff333333),
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: seconds,
            style: const TextStyle(
              fontSize: 50,
              color: Color(0xff333333),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
