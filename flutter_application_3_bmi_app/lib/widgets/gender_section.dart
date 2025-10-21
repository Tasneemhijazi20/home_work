import 'package:flutter/material.dart';

class GenderSection extends StatelessWidget {
  const GenderSection({
    super.key,
    required this.gender,
    required this.iconData,
  });
  final IconData iconData;
  final String gender;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xff434A75),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(iconData, color: Colors.white, size: 100),
          Text(gender, style: TextStyle(color: Colors.grey, fontSize: 17)),
        ],
      ),
    );
  }
}
