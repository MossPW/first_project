import 'package:first_project/screen/content_screen.dart';
import 'package:first_project/screen/greeting_screen.dart';
import 'package:first_project/screen/home_screen.dart';
import 'package:first_project/screen/simple_form_screen.dart';
import 'package:first_project/screen/workshop_form_screen.dart';
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
        home: WorkshopFormScreen());
  }
}
