import 'package:flutter/material.dart';
import 'package:flutter_application_2_homework_2/widgets/features_section.dart';
import 'package:flutter_application_2_homework_2/widgets/quick_stats_section.dart';
import 'package:flutter_application_2_homework_2/widgets/welcome_section.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Application', style: TextStyle(fontSize: 13)),
          leading: Icon(Icons.arrow_back_ios_new_outlined, size: 16),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 17,
            children: [
              WelcomeSection(),
              Text(
                'Quick Stats',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 8),
                child: Row(
                  spacing: 25,
                  children: [
                    QuickStatsSection(
                      iconData: Icons.people,
                      iconColor: Colors.deepPurple,
                      numberText: '1,234',
                      text: 'Users',
                    ),
                    QuickStatsSection(
                      iconData: Icons.star,
                      iconColor: Colors.orangeAccent,
                      numberText: '4.8',
                      text: 'Rating',
                    ),
                    QuickStatsSection(
                      iconData: Icons.height_rounded,
                      iconColor: Colors.lightBlue,
                      numberText: '98%',
                      text: 'Success',
                    ),
                  ],
                ),
              ),
              Text(
                'Features',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Column(
                spacing: 8,
                children: [
                  FeaturesSection(
                    color: const Color.fromARGB(255, 244, 221, 248),
                    iconColor: Colors.purple,
                    iconData: Icons.check_circle_outline,
                    featuresText: 'Fast Performance',
                    descText: 'Lightning fast app performance',
                  ),
                  FeaturesSection(
                    color: const Color.fromARGB(255, 221, 235, 248),
                    iconColor: Colors.blue,
                    iconData: Icons.security,
                    featuresText: 'Secure',
                    descText: 'Your data is safe with us',
                  ),
                  FeaturesSection(
                    color: const Color.fromARGB(255, 247, 234, 216),
                    iconColor: Colors.orange,
                    iconData: Icons.color_lens,
                    featuresText: 'Beautiful UI',
                    descText: 'Modern and clean design',
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  Container(
                    height: 35,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.lightBlue,
                    ),
                    child: Center(
                      child: Text(
                        'Settings',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 35,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.orange,
                    ),
                    child: Center(
                      child: Text(
                        'Profile',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
