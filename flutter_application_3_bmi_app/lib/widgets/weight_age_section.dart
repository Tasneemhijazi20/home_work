import 'package:flutter/material.dart';

class WeightAgeSection extends StatefulWidget {
  WeightAgeSection({
    super.key,
    required this.title,
    required this.number,
    required this.increment,
    required this.decrement,
  });
  String title;
  String number;
  Function increment;
  Function decrement;

  @override
  State<WeightAgeSection> createState() => _WeightAgeSectionState();
}

class _WeightAgeSectionState extends State<WeightAgeSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xff434A75),
      ),
      child: Column(
        children: [
          Text(
            widget.title,
            style: TextStyle(color: Colors.grey, fontSize: 17),
          ),
          Text(
            widget.number,
            style: TextStyle(color: Colors.white, fontSize: 65),
          ),
          Row(
            spacing: 16,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 55,
                width: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(100),
                    ),
                    backgroundColor: Colors.grey,
                  ),
                  onPressed: () {
                    widget.decrement();
                  },
                  child: Center(
                    child: Icon(Icons.remove, color: Colors.white, size: 35),
                  ),
                ),
              ),
              SizedBox(
                height: 55,
                width: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(100),
                    ),
                    backgroundColor: Colors.grey,
                  ),
                  onPressed: () {
                    widget.increment();
                  },
                  child: Center(
                    child: Icon(Icons.add, color: Colors.white, size: 35),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
