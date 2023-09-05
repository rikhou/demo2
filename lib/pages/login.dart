import 'package:flutter/material.dart';

import '../common_widget/CustomButton.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Image.asset(
          "assets/images/login_splash.jpg",
          height: screenSize.height * 0.5,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Live Life Outside",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Divider(
                color: Colors.black,
                endIndent: 320,
              ),
              Text(
                "Welcome to CDFW's Online License Sales and Services",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              CustomButton(
                onPressed: () {},
                text: "Sign In",
                padding: const EdgeInsets.symmetric(vertical: 15),
                margin: const EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                // backgroundColor: Colors.black,
                // foregroundColor: Colors.white,
              ),
              CustomButton(
                onPressed: () {},
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 15),
                text: "Create Account",
                // backgroundColor: Colors.white,
                // foregroundColor: Colors.black,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
