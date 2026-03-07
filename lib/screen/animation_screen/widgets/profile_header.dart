import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CircleAvatar(radius: 40),
        SizedBox(height: 10),
        Text("Patipan"),
        Text("@patipan"),
      ],
    );
  }
}
