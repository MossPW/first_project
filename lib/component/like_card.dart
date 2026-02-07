import 'package:flutter/material.dart';

class LikeCard extends StatefulWidget {
  const LikeCard({super.key});
  @override
  State<LikeCard> createState() => _LikeCardState();
}

class _LikeCardState extends State<LikeCard> {
  bool isLike = true;
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.lightGreenAccent,
        width: 300,
        child: Column(
          children: [
            Text(isLike ? "Liked" : "Dislike"),
            IconButton(
                onPressed: () {
                  setState(() {
                    isLike = !isLike;
                  });
                },
                icon: Icon(isLike ? Icons.thumb_up : Icons.thumb_down)),
            SizedBox(
              height: 10,
            ),
            Text("Count : $count"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        count++;
                      });
                    },
                    icon: Icon(Icons.add)),
                IconButton(
                    onPressed: () {
                      setState(() {
                        if (count > 0) count--;
                      });
                    },
                    icon: Icon(Icons.minimize)),
                IconButton(
                    onPressed: () {
                      setState(() {
                        count = 0;
                      });
                    },
                    icon: Icon(Icons.clear))
              ],
            )
          ],
        ));
  }
}
