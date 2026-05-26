import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.title,
    required this.hintText,
    this.obscureText = false,
    required this.validator,
  });

  final TextEditingController controller;
  final String title;
  final String hintText;
  final bool obscureText;
  final String? Function(String?) validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 4.0,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Theme.of(context).textTheme.titleLarge),
        TextFormField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: hintText,
            helperText: '',
          ),
          validator: validator,
        ),
      ],
    );
  }
}
