import 'package:flutter/material.dart';

class LicenseTab extends StatefulWidget {
  const LicenseTab({super.key});

  @override
  State<LicenseTab> createState() => _LicenseTabState();
}

class _LicenseTabState extends State<LicenseTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("License Tab"),
    );
  }
}
