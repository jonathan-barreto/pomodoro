import 'package:flutter/material.dart';
import 'package:pomodoro_app/app/widgets/action_button.dart';

class RowActions extends StatelessWidget {
  const RowActions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ActionButton(
          color: Colors.redAccent,
          icon: Icons.more_horiz,
        ),
        ActionButton(
          color: Colors.redAccent,
          icon: Icons.pause,
        ),
        ActionButton(
          color: Colors.redAccent,
          icon: Icons.double_arrow,
        ),
      ],
    );
  }
}
