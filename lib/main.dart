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
          backgroundColor: Colors.blueAccent[100],
        ),
        body: ListView(
          children: [
            Container(
              height: 350,
              width: double.infinity,
              color: Colors.blue,
              child: Text('Item 1'),
            ),
            Container(
              height: 350,
              width: double.infinity,
              color: Colors.red,
              child: Text('Item 2'),
            ),
            Container(
              height: 350,
              width: double.infinity,
              color: Colors.green,
              child: Text('Item 3'),
            ),
          ],
        ));
  }
}
