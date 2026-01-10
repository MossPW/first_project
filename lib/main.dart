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
        body: Column(
          children: [
            SizedBox(height: 20),
            Row(children: [
              SizedBox(width: 20),
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
              SizedBox(width: 20),
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
              SizedBox(width: 20),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              )
            ]),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 20),
                Expanded(
                    flex: 1,
                    child: Container(
                      height: 100,
                      color: Colors.yellow,
                    )),
                SizedBox(width: 20),
                Expanded(
                    flex: 2,
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.purple,
                    )),
                SizedBox(width: 20),
              ],
            )
          ],
        ));
  }
}
