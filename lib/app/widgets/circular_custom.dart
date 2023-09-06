import 'package:flutter/material.dart';

class CircularCustom extends StatelessWidget {
  final double value;

  const CircularCustom({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 300,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/tomate.gif',
            fit: BoxFit.cover,
          ),
          SizedBox(
            width: 250,
            height: 250,
            child: CircularProgressIndicator(
              value: value,
              strokeWidth: 15,
              color: Colors.red,
              backgroundColor: Colors.grey.shade200,
            ),
          ),
        ],
      ),
    );
  }
}
