import 'package:flutter/material.dart';

import '../common_widget/CustomFilledButton.dart';
import '../common_widget/CustomOutlineButton.dart';

class Location extends StatelessWidget {
  final Function? next;
  const Location({super.key, this.next});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 80, 10, 20),
      // color: Colors.amber,
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
              indent: 180,
              endIndent: 180,
              color: Colors.black,
            ),
          ),
          const Text(
            "Enable location to get a better experience and features catered specifically to your location.",
            textAlign: TextAlign.center,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(120),
                color: Colors.white,
              ),
              margin: EdgeInsets.symmetric(vertical: 80),
              padding: EdgeInsets.all(50),
              child: Image.asset("assets/images/location.png",
                  width: 80, height: 80),
            ),
          ),
          CustomFilledButton(
            onPressed: () {
              next!();
            },
            text: "Turn on Location",
            padding: const EdgeInsets.symmetric(vertical: 15),
            margin: const EdgeInsets.symmetric(vertical: 10),
            width: double.infinity,
          ),
          CustomOutlineButton(
            onPressed: () {
              next!();
            },
            text: "Not Now",
            padding: const EdgeInsets.symmetric(vertical: 15),
            margin: const EdgeInsets.symmetric(vertical: 10),
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
