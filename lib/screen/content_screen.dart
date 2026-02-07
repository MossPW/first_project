import 'package:first_project/component/text_card.dart';
import 'package:flutter/material.dart';

class ContentScreen extends StatelessWidget {
  const ContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextCard(
            text: "Personal Growth",
            color: Colors.greenAccent,
          ),
          SizedBox(
            height: 10,
          ),
          TextCard(
            text:
                "In a fast-changing world, the ability to learn and adapt has become more important than ever. Technology continues to reshape the way we work, communicate, and live our daily lives. Those who are willing to embrace change, improve their skills, and stay curious will always have an advantage. Learning is no longer limited to classrooms; it happens everywhere, from real-life experiences to digital platforms. By keeping an open mind and a positive attitude, we can turn challenges into opportunities and grow stronger with every step forward.",
            color: Colors.orangeAccent,
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back home'))
        ])));
  }
}
