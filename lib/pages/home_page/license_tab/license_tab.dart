import 'package:flutter/material.dart';

import '../../../common_widget/CustomCard.dart';

class LicenseTab extends StatefulWidget {
  const LicenseTab({super.key});

  @override
  State<LicenseTab> createState() => _LicenseTabState();
}

class _LicenseTabState extends State<LicenseTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(top: 40, left: 20),
          color: Color(0xFF294836),
          width: double.infinity,
          height: 140,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("License", style: TextStyle(fontSize: 24, color: Colors.white)),
              Divider(color: Colors.white, thickness: 2, endIndent: 340),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Import Information",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              CustomCard(
                child: Column(children: [
                  ListTile(
                    title: Text('My Active Licenses', style: TextStyle(fontSize: 14)),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () => {},
                  ),
                  ListTile(
                    title: Text('View Draw Application/Results', style: TextStyle(fontSize: 14)),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () => {},
                  ),
                  ListTile(
                    title: Text('My Active Access Permits', style: TextStyle(fontSize: 14)),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () => {},
                  ),
                ]),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                child: const Text("To Internet Sales",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              ),
              CustomCard(
                child: ListTile(
                  leading: const CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.black12,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 24,
                      child: Icon(Icons.shopping_cart_outlined, size: 32, color: Colors.black54),
                    ),
                  ),
                  title: const Text('Purchase Licenses',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                  subtitle: const Text("Purchase or renew hunting licenses",
                      style: TextStyle(fontSize: 12)),
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
