import 'package:flutter/material.dart';
import 'package:flutter_huntfish_ca/common_widget/CustomButton.dart';

import '../common_widget/CustomText.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 60, 10, 20),
      child: Column(
        children: [
          const Text(
            "Sign In",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          CustomeText(
            label: "User ID",
            labelText: "Please Entry Email: xx@xx.com",
          ),
          SizedBox(
            height: 20,
          ),
          CustomeText(
            label: "Password",
            labelText: "Please Entry",
            obscureText: true,
            suffix: TextButton(
              onPressed: () {},
              child: const Text("Show"),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text("Forgot Password?"),
          ),
          CustomButton(
            onPressed: () {},
            text: "Sign In",
            padding: const EdgeInsets.symmetric(vertical: 15),
            margin: const EdgeInsets.symmetric(vertical: 10),
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
