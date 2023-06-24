import 'package:flutter/material.dart';

class PaymentFormField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  const PaymentFormField(
      {super.key, required this.labelText, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide:
              BorderSide(color: Color.fromARGB(255, 238, 237, 237), width: 0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: Colors.transparent, width: 0),
        ),
        fillColor: Color(0xffF9FAFB),
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide(width: 3, color: Colors.greenAccent),
        ),
        hintText: labelText,
        contentPadding: EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 12.0,
        ),
      ),
    );
  }
}
