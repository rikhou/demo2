import 'package:flutter/material.dart';

import '../../../common_widget/CustomCard.dart';

class MeTab extends StatelessWidget {
  const MeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 40, left: 20),
          color: const Color(0xFF324755),
          width: double.infinity,
          height: 140,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Setting", style: TextStyle(fontSize: 24, color: Colors.white)),
              Divider(color: Colors.white, thickness: 2, endIndent: 340),
              Text("Dan_porter@gmail.com", style: TextStyle(fontSize: 14, color: Colors.white)),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Profile Related",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              CustomCard(
                child: ListTile(
                  title: const Text('Manage Profiles', style: TextStyle(fontSize: 14)),
                  trailing: const Icon(Icons.keyboard_arrow_right),
                  onTap: () => {},
                ),
              ),
              const Text("Account", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              CustomCard(
                child: Column(children: [
                  ListTile(
                    title: const Text('Change Password', style: TextStyle(fontSize: 14)),
                    trailing: const Icon(Icons.keyboard_arrow_right),
                    onTap: () => {},
                  ),
                  ListTile(
                    title: const Text('Delete Account', style: TextStyle(fontSize: 14)),
                    trailing: const Icon(Icons.keyboard_arrow_right),
                    onTap: () => {},
                  ),
                ]),
              ),
              const Text("Security", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              CustomCard(
                child: ListTile(
                  title: const Text('Qucik Access Setting', style: TextStyle(fontSize: 14)),
                  trailing: const Icon(Icons.keyboard_arrow_right),
                  onTap: () => {},
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
