import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  final List<BottomNavigationBarItem> items;
  final Function onTap;
  final int currentIndex;
  const CustomBottomNavigation(
      {super.key,
      required this.items,
      required this.onTap,
      required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(3, (index) {
        return Expanded(
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color:
                      currentIndex == index ? Colors.black : Colors.transparent,
                  width: 1.0,
                ),
              ),
            ),
            child: InkWell(
              onTap: () => onTap(index),
              child: Container(
                padding: EdgeInsets.only(top: 6),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    currentIndex == index
                        ? items[index].activeIcon
                        : items[index].icon,
                    Text(items[index].label!),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
