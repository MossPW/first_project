import 'package:flutter/material.dart';

class TextCard extends StatelessWidget {
  final String text;
  final Color color;
  const TextCard({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: color,
            boxShadow: [BoxShadow(color: Colors.black, spreadRadius: 2)]),
        padding: EdgeInsets.all(10),
        child: Text(
          text,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ));
  }
}
