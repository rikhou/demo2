import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "My License",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            TextButton(onPressed: () {}, child: Text("View All Licenses"))
          ],
        ),
        Text("Discovery"),
      ],
    );
  }
}
