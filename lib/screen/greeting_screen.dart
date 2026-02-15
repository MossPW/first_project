import 'package:first_project/component/like_card.dart';
import 'package:first_project/component/profile_card.dart';
import 'package:first_project/component/text_card.dart';
import 'package:first_project/screen/content_screen.dart';
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
          ProfileCard(
            name: "Patipan Watjanapron",
            imageUrl:
                "https://scontent.fbkk2-8.fna.fbcdn.net/v/t39.30808-6/608316994_25709346105357507_669053238606321754_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeHfW4r9ZGhId37fjkkDFcXoaox42uy98E1qjHja7L3wTWcmSJpvEdXyw1BC9S5PhhdSsQhvQKyCRF_AoWIJhDlO&_nc_ohc=tFkoEdewJ0IQ7kNvwF5FDQp&_nc_oc=AdnHp-SYTBGVp5yWkxkdySuLsanD3ucTUxi77KVJj01Z_VxuxwaN9GW-VWpMBd_nb34&_nc_zt=23&_nc_ht=scontent.fbkk2-8.fna&_nc_gid=eGxIXNadXUkx7Iy6J-0fKQ&oh=00_AfuuVrvEeeRUrmy8swh7OAjE4kD-wnTgpaJCetPk2fdQqA&oe=698CAB65",
          ),
          SizedBox(
            height: 20,
          ),
          // ElevatedButton(
          //     onPressed: () {
          //       //การเปลี่ยนหน้า ไปหน้าต่อไป
          //       Navigator.push(
          //           context,
          //           MaterialPageRoute<void>(
          //             builder: (BuildContext context) =>
          //                 ContentScreen(name: name),
          //           ));
          //       // Navigator.pushNamed(context, '/content');
          //     },
          //     child: Text("Go to Content ->"))
        ],
      )),
    );
  }
}
