import 'package:flutter/material.dart';

class IncDecWidget extends StatelessWidget {
  IncDecWidget({super.key, required this.onTap, required this.iconData});
  IconData iconData;
  VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: 25,
        backgroundColor: const Color(0xff4B4E5F),
        child: Icon(iconData, size: 35, color: Colors.white),
      ),
    );
  }
}
