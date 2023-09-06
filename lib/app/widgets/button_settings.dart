import 'package:flutter/material.dart';

class ButtonSettings extends StatelessWidget {
  const ButtonSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: const ButtonStyle(
        elevation: MaterialStatePropertyAll(0),
        backgroundColor: MaterialStatePropertyAll(
          Colors.white,
        ),
        fixedSize: MaterialStatePropertyAll(
          Size(180, 50),
        ),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.settings,
            color: Colors.red,
          ),
          Text(
            'Configurações',
            style: TextStyle(
              color: Colors.red,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
