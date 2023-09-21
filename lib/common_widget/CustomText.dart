import 'package:flutter/material.dart';

class CustomeText extends StatelessWidget {
  final String label;
  final String? hintText;
  final bool obscureText;
  final Widget? suffix;
  final TextEditingController? controller;

  const CustomeText({
    super.key,
    required this.label,
    this.hintText,
    this.obscureText = false,
    this.suffix,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          label,
          style: TextStyle(fontSize: 16),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 5),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
              hintText: hintText,
              suffix: suffix,
            ),
            obscureText: obscureText,
          ),
        ),
      ]),
    );
  }
}
