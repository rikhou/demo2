import 'package:flutter/material.dart';
import '../common_widget/CustomFilledButton.dart';
import '../common_widget/CustomText.dart';

class SignIn extends StatefulWidget {
  final Function? next;
  const SignIn({super.key, this.next});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 80, 10, 20),
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
            obscureText: obscureText,
            suffix: SizedBox(
              height: 35,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    obscureText = !obscureText;
                  });
                },
                child: const Text("Show"),
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
          CustomFilledButton(
            onPressed: () {
              this.widget.next!();
            },
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
          ),
          Expanded(
            child: SizedBox(
              height: 10,
            ),
          ),
        ],
      ),
    );
  }
}
