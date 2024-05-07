import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;
  final bool obscureText;
  const MyTextField({super.key,
  required this.textController,
  required this.hintText,
  required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textController,
      obscureText: obscureText,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.tertiary),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
        ),
        hintText: hintText,
        hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
      ),
    );
  }
}