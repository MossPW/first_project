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
        appBar: AppBar(
          title: Text('Home Screen'),
          backgroundColor: Colors.blueAccent,
        ),
        body: Stack(children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.red,
          ),
          Positioned(
              top: 10,
              left: 10,
              child: Container(
                height: 50,
                width: 50,
                color: Colors.green,
              )),
          Positioned(
              top: 10,
              right: 10,
              child: Container(
                height: 50,
                width: 50,
                color: Colors.blue,
              )),
          Positioned(
              bottom: 10,
              right: 10,
              child: Container(
                height: 50,
                width: 50,
                color: Colors.yellow,
              )),
          Positioned(
              bottom: 10,
              left: 10,
              child: Container(
                height: 50,
                width: 50,
                color: Colors.pink,
              )),
        ]));
  }
}
