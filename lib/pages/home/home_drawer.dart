import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/icon.png",
                  width: 40,
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ),
          Container(
            color: const Color(0xFFF0F3F4),
            child: new ListTile(
              leading: CircleAvatar(
                radius: 22,
                backgroundColor: Colors.black,
                child: new CircleAvatar(
                  child: new Text("AI"),
                  backgroundColor: const Color(0xFFF0F3F4),
                ),
              ),
              title: new Text(
                'ALICIA IH',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle: new Text("GO ID #:10874938000"),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () => {},
            ),
          ),
          Container(
            child: new ListTile(
              // leading: new CircleAvatar(child: new Text("B")),
              title: new Text('Drawer item B'),
              trailing: Icon(Icons.keyboard_arrow_right),
              // subtitle: new Text("Drawer item B subtitle"),
              onTap: () => {},
            ),
          ),
        ],
      ),
    );
  }
}
