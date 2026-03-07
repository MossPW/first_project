import 'package:flutter/material.dart';

class UiAdvand extends StatefulWidget {
  const UiAdvand({super.key});

  @override
  State<UiAdvand> createState() => _UiAdvandState();
}

class _UiAdvandState extends State<UiAdvand> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        CircleAvatar(radius: 40),
        Text("Patipan"),
        Text("@patipan"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(children: [Text("120"), Text("Posts")]),
            Column(children: [Text("500"), Text("Followers")]),
            Column(children: [Text("300"), Text("Following")]),
          ],
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text("Follow"),
        )
      ],
    ));
  }
}
