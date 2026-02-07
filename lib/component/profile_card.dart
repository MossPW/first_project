import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String imageUrl;

  const ProfileCard({
    super.key,
    required this.name,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.orange.shade400,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black, width: 3),
        boxShadow: const [
          BoxShadow(
            color: Colors.black45,
            blurRadius: 8,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // ผ้าคาดหน้าผากนินจา
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 6),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.black, width: 2),
            ),
            child: const Center(
              child: Text(
                '🍃 Full Stack Developer 🍃',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),

          const SizedBox(height: 12),

          // รูปโปรไฟล์นินจา
          CircleAvatar(
            radius: 48,
            backgroundColor: Colors.black,
            child: CircleAvatar(
              radius: 42,
              backgroundImage: NetworkImage(imageUrl),
            ),
          ),

          const SizedBox(height: 12),

          // ชื่อ
          Text(
            name,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),

          const SizedBox(height: 6),

          // ตำแหน่ง
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 6,
            ),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              '🔥 Davincy Co,LTD 🔥',
              style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
