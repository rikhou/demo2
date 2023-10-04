import 'package:flutter/material.dart';
import 'onboarding_location.dart';
import 'home_page/home_page.dart';
import 'login.dart';
import 'signin.dart';

class HomeContainer extends StatefulWidget {
  const HomeContainer({super.key});

  @override
  State<HomeContainer> createState() => _HomeContainerState();
}

class _HomeContainerState extends State<HomeContainer> {
  int _currentPage = 0;

  next() {
    setState(() {
      if (_currentPage < 3) {
        _currentPage++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: <Widget>[
          IndexedStack(
            index: _currentPage,
            children: <Widget>[
              Login(next: next),
              SignIn(next: next),
              Location(next: next),
              HomePage(),
            ],
          ),
          // Positioned(
          //   bottom: 16,
          //   right: 16,
          //   child: OutlinedButton(
          //     child: const Text('Next'),
          //     onPressed: () {
          //       setState(() {
          //         if (_currentPage < 3) {
          //           _currentPage++;
          //         }
          //       });
          //     },
          //   ),
          // ),
          // Positioned(
          //   bottom: 16,
          //   left: 16,
          //   child: OutlinedButton(
          //     child: Text('Previous'),
          //     onPressed: () {
          //       setState(() {
          //         if (_currentPage > 0) {
          //           _currentPage--;
          //         }
          //       });
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}
