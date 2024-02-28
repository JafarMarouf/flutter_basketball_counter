import 'package:flutter/material.dart';

class CustomeButton extends StatelessWidget {
  void Function()? onPressed;
  final String functionName;
  CustomeButton({
    super.key,
    required this.functionName,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        shape: const LinearBorder(),
        minimumSize: const Size(100,40),
      ),
      child: Text(
        functionName,
        style: const TextStyle(
          color: Colors.orange,
          fontSize: 18,
        ),
      ),
    );
  }
}
