import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final Color color;
  final IconData icon;
  final Size? size;

  const ActionButton({
    super.key,
    required this.color,
    required this.icon,
    this.size = const Size(80, 60),
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          color,
        ),
        fixedSize: MaterialStatePropertyAll(
          size,
        ),
      ),
      child: Icon(
        icon,
        size: 50,
      ),
    );
  }
}
