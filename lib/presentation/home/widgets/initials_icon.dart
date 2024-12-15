import 'package:flutter/material.dart';

class InitialsIcon extends StatelessWidget {
  final String initials;
  final double size;
  final Color backgroundColor;
  final Color textColor;

  const InitialsIcon({
    super.key,
    required this.initials,
    this.size = 24.0,
    this.backgroundColor = Colors.green,
    this.textColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Center(
        child: Text(
          initials,
          style: TextStyle(
            fontSize: size * 0.5, // Adjust text size relative to the icon size
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
