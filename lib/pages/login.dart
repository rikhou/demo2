import 'package:flutter/material.dart';

import '../common_widget/CustomFilledButton.dart';
import '../common_widget/CustomOutlineButton.dart';
import '../i18n/strings.g.dart';

class Login extends StatelessWidget {
  final Function? next;
  const Login({super.key, this.next});

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);
    final screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Expanded(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset(
                "assets/images/login_splash.jpg",
                height: screenSize.height * 0.5,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: Image.asset(
                  "assets/images/icon.png",
                  width: 90,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                t.lifeLife,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Divider(
                color: Colors.black,
                endIndent: 320,
              ),
              const Text(
                "Welcome to CDFW's Online License Sales and Services",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomFilledButton(
                onPressed: () {
                  next!();
                },
                text: "Sign In",
                padding: const EdgeInsets.symmetric(vertical: 15),
                margin: const EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
              ),
              SizedBox(
                height: 10,
              ),
              CustomOutlineButton(
                onPressed: () {},
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 15),
                text: "Create Account",
              ),
            ],
          ),
        ),
        SizedBox(
          height: 50,
        )
      ],
    );
  }
}
