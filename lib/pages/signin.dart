import 'dart:io';

import 'package:flutter/material.dart';
import '../common_widget/CustomButton.dart';
import '../common_widget/CustomText.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 100, 10, 20),
      child: Column(
        children: [
          const Text(
            "Sign In",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 20,
          ),
          CustomeText(
            label: "User ID",
            hintText: "Please Entry Email: xx@xx.com",
          ),
          const SizedBox(
            height: 20,
          ),
          CustomeText(
            label: "Password",
            hintText: "Please Entry",
            obscureText: true,
            suffix: TextButton(
              onPressed: () {},
              child: const Text(
                "Show",
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text("Forgot Password?"),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          CustomButton(
            onPressed: () {},
            text: "Sign In",
            padding: const EdgeInsets.symmetric(vertical: 15),
            margin: const EdgeInsets.symmetric(vertical: 10),
            width: double.infinity,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text("Don't have an account?"),
              TextButton(onPressed: () {}, child: const Text("Create Account"))
            ],
          )
        ],
      ),
    );
  }
}
