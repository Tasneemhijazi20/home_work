import 'package:flutter/material.dart';

class QuickStatsSection extends StatelessWidget {
  QuickStatsSection({
    required this.iconData,
    required this.iconColor,
    required this.numberText,
    required this.text,
  });
  IconData iconData;
  Color iconColor;
  String numberText;
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: 90,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Column(
          spacing: 2,
          children: [
            Icon(iconData, color: iconColor),
            const SizedBox(height: 1),
            Text(
              numberText,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            Text(text, style: TextStyle(fontSize: 12, color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
