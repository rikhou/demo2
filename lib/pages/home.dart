import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BottomNavigationBar')),
      body: Container(
        color: Colors.green,
        child: const Text("home"),
      ),
      endDrawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.title),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Hunting',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.backspace),
          label: 'Fishing',
        ),
      ]),
    );
  }
}
