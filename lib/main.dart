import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter First Project',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
          useMaterial3: true,
        ),
        home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar:
        //  AppBar(
        //   title: Text('Home Screen'),
        //   backgroundColor: Colors.blueAccent,
        // ),
        body: Center(
            child: Stack(
      children: [
        Container(
            height: 300,
            width: 120,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(10))),
        Positioned(
            top: 20,
            left: 20,
            child: Container(
              height: 80,
              width: 80,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.red),
            )),
        Positioned(
            top: 110,
            left: 20,
            child: Container(
              height: 80,
              width: 80,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.yellow),
            )),
        Positioned(
            bottom: 20,
            left: 20,
            child: Container(
              height: 80,
              width: 80,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.green),
            )),
      ],
    )));
  }
}
