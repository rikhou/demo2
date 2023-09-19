import 'package:flutter/material.dart';

import '../common_widget/CustomButton.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 100, 10, 20),
      child: Column(
        children: [
          const Text(
            "Location Access",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: const Divider(
              thickness: 1,
              indent: 150,
              endIndent: 150,
              color: Colors.black,
            ),
          ),
          const Text(
            "Enable location to get a better experience and features catered specifically to your location.",
            textAlign: TextAlign.center,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80),
              color: Colors.white,
            ),
            margin: EdgeInsets.symmetric(vertical: 20),
            padding: EdgeInsets.all(40),
            child: Image.asset("assets/images/location.png",
                width: 80, height: 80),
          ),
          CustomButton(
            onPressed: () {},
            text: "Sign In",
            padding: const EdgeInsets.symmetric(vertical: 15),
            margin: const EdgeInsets.symmetric(vertical: 10),
            width: double.infinity,
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
