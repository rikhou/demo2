import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});
  static const border = Border(bottom: BorderSide(color: Colors.black12, width: 1.0));

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // backgroundColor: Colors.white,
      child: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: const Text("General",
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400))),
                  Container(
                    decoration: const BoxDecoration(border: border),
                    child: const ListTile(
                      title:
                          Text('Puchase Privilege', style: TextStyle(fontWeight: FontWeight.w500)),
                      trailing: Icon(Icons.keyboard_arrow_right),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(border: border),
                    child: const ListTile(
                      title: Text('Sales Agents', style: TextStyle(fontWeight: FontWeight.w500)),
                      trailing: Icon(Icons.keyboard_arrow_right),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 40),
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: const Text("Information",
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400))),
                  Container(
                    decoration: const BoxDecoration(border: border),
                    child: const ListTile(
                      title: Text('Regulations', style: TextStyle(fontWeight: FontWeight.w500)),
                      trailing: Icon(Icons.keyboard_arrow_right),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(border: border),
                    child: const ListTile(
                      title: Text('Useful Links', style: TextStyle(fontWeight: FontWeight.w500)),
                      trailing: Icon(Icons.keyboard_arrow_right),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 40),
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: const Text("Contact Us",
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400))),
                  Container(
                    decoration: const BoxDecoration(border: border),
                    child: const ListTile(
                      title: Text('Follow Us', style: TextStyle(fontWeight: FontWeight.w500)),
                      trailing: Icon(Icons.keyboard_arrow_right),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(border: border),
                    child: const ListTile(
                      title: Text('Contact Us', style: TextStyle(fontWeight: FontWeight.w500)),
                      trailing: Icon(Icons.keyboard_arrow_right),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    child: const ListTile(
                      title: Text('Sign Out', style: TextStyle(fontWeight: FontWeight.w500)),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Divider(color: Colors.black12, thickness: 1),
                Container(
                  margin: const EdgeInsets.only(bottom: 10, top: 5),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Privacy Policy",
                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
                      SizedBox(
                          height: 10, child: VerticalDivider(color: Colors.black87, thickness: 1)),
                      Text("Terms of Service",
                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
