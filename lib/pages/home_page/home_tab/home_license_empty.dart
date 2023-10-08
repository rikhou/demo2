import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_huntfish_ca/common_widget/CustomFilledButton.dart';

class HomeLicenseEmpty extends StatelessWidget {
  const HomeLicenseEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            child: const Text("My License",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500))),
        DottedBorder(
          borderType: BorderType.RRect,
          radius: const Radius.circular(12),
          color: Colors.black,
          dashPattern: const [3, 3],
          strokeWidth: 1,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            width: double.infinity,
            child: Column(children: [
              const Text("No license found",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              Container(
                child: Text("Purchase your hunting or fishing license now",
                    style: TextStyle(fontSize: 12)),
                margin: EdgeInsets.only(top: 5, bottom: 15),
              ),
              CustomFilledButton(text: "Purchase License", onPressed: () => {}),
            ]),
          ),
        )
      ],
    );
  }
}
