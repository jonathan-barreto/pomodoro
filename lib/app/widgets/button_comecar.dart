import 'package:flutter/material.dart';

class ButtonComecar extends StatelessWidget {
  final VoidCallback function;

  const ButtonComecar({
    super.key,
    required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        function();
      },
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          Colors.red,
        ),
        fixedSize: MaterialStatePropertyAll(
          Size(150, 50),
        ),
      ),
      child: const Text(
        'Começar',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
