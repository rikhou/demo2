import 'package:flutter/material.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 60, 10, 20),
      child: Column(
        children: [
          Text("Location"),
          TextField(),
        ],
      ),
    );
  }
}
