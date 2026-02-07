import 'package:first_project/component/text_card.dart';
import 'package:flutter/material.dart';

class GreetingScreen extends StatelessWidget {
  final String name;
  final Color bgColor;
  const GreetingScreen({super.key, required this.name, required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextCard(
            text: "Good Afternoon",
            color: Colors.greenAccent,
          ),
          SizedBox(height: 10),
          TextCard(
            text: name,
            color: Colors.yellowAccent,
          ),
          SizedBox(height: 10),
          TextCard(
            text: "Good luck have fun!",
            color: Colors.purpleAccent,
          ),
        ],
      )),
    );
  }
}
