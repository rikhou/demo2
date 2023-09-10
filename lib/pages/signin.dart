import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 60, 10, 20),
      child: Column(
        children: [
          Text("data"),
          TextField(),
        ],
      ),
    );
  }
}
