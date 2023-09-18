import 'package:flutter/material.dart';

class CustomeText extends StatelessWidget {
  final String label;
  final String? labelText;
  final bool obscureText;
  final Widget? suffix;

  const CustomeText({
    super.key,
    required this.label,
    this.labelText,
    this.obscureText = false,
    this.suffix,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          label,
          style: TextStyle(fontSize: 16),
        ),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.all(10.0),
            // icon: Icon(Icons.person),
            labelText: labelText,
            suffix: suffix,
          ),
          obscureText: obscureText,
        ),
      ]),
    );
  }
}
