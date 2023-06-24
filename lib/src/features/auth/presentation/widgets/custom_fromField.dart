import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final String labelText;
  final IconData suffixIcon;
  final VoidCallback? onPressed;

  const CustomTextField({
    required this.controller,
    this.obscureText = false,
    required this.labelText,
    this.suffixIcon = Icons.visibility_off,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 12.0,
        ),
        suffixIcon: onPressed != null
            ? IconButton(
                icon: Icon(suffixIcon),
                onPressed: onPressed,
              )
            : null,
      ),
    );
  }
}
