import 'package:flutter/material.dart';

class CustomButton<T extends ButtonStyleButton> extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  CustomButton(
      {required this.text,
      required this.onPressed,
      this.width,
      this.height,
      this.padding,
      this.margin,
      this.backgroundColor,
      this.foregroundColor});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = FilledButton.styleFrom(
      padding: padding,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4))),
    );

    return Container(
      width: width,
      height: height,
      margin: margin,
      child: FilledButton(
        style: style,
        onPressed: onPressed,
        child: Text(
          text,
        ),
      ),
    );
  }
}
