import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final double? height;
  final double? width;
  final Widget? child;
  final EdgeInsetsGeometry? padding;

  const CustomCard(
      {super.key,
      this.height,
      this.width,
      this.child,
      this.padding = const EdgeInsets.symmetric(vertical: 10, horizontal: 15)});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: padding,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(25),
              offset: const Offset(2, 2),
              blurRadius: 4,
            ),
          ],
          border: Border.all(width: 1, color: Colors.black12),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: child,
    );
  }
}
