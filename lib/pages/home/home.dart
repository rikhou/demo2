import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../common_widget/CustomBottomNavigation.dart';
import '../../i18n/strings.g.dart';
import 'home_tab.dart';
import 'me_tab.dart';
import 'license_tab.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _index = 0;
  Widget _currentBody = HomeTab();

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.only(top: 25),
          width: 10,
          child: Image.asset(
            "assets/images/icon.png",
            fit: BoxFit.contain,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
              child: Text(
                t.app.greeting(name: 'ABC'),
                style: const TextStyle(
                  fontSize: 26,
                ),
              ),
            ),
            const Divider(
              thickness: 1,
              color: Colors.black,
            ),
            Container(color: Color(0xFFF0F3F4), child: _currentBody),
          ],
        ),
      ),
      endDrawer: Drawer(),
      bottomNavigationBar: CustomBottomNavigation(
          onTap: (index) {
            print(index);
            switch (index) {
              case 0:
                _currentBody = HomeTab();
                break;
              case 1:
                _currentBody = LicenseTab();
                break;
              case 2:
                _currentBody = MeTab();
                break;
            }
            // _currentBody =
            //     Container(child: _currentBody, color: Color(0xFFF0F3F4));
            setState(() {
              _index = index;
            });
          },
          currentIndex: _index,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.idCard),
              activeIcon: Icon(FontAwesomeIcons.solidIdCard),
              label: 'Licenses',
            ),
            BottomNavigationBarItem(
              // icon: Icon(Icons.person_outlined),
              icon: Icon(Icons.person_outlined),
              activeIcon: Icon(Icons.person),
              label: 'Me',
            ),
          ]),
    );
  }
}
