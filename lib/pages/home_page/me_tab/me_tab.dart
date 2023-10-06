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
          padding: EdgeInsets.only(top: 40, left: 20),
          color: Color(0xFF324755),
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
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Profile Related", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              CustomCard(
                child: ListTile(
                  title: Text('Manage Profiles', style: TextStyle(fontSize: 14)),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () => {},
                ),
              ),
              Text("Account", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              CustomCard(
                child: Column(children: [
                  ListTile(
                    title: Text('Change Password', style: TextStyle(fontSize: 14)),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () => {},
                  ),
                  ListTile(
                    title: Text('Delete Account', style: TextStyle(fontSize: 14)),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () => {},
                  ),
                ]),
              ),
              Text("Security", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              CustomCard(
                child: ListTile(
                  title: Text('Qucik Access Setting', style: TextStyle(fontSize: 14)),
                  trailing: Icon(Icons.keyboard_arrow_right),
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
