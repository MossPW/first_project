import 'package:first_project/screen/product_screen/list_product.dart';
import 'package:first_project/screen/test_widget_screen/content_screen.dart';
import 'package:first_project/screen/test_widget_screen/greeting_screen.dart';
import 'package:first_project/screen/test_widget_screen/home_screen.dart';
import 'package:first_project/screen/api_screen/list_user_screen.dart';
import 'package:first_project/screen/api_screen/list_user_screen_v2.dart';
import 'package:first_project/screen/test_widget_screen/simple_form_screen.dart';
import 'package:first_project/screen/test_widget_screen/workshop_form_screen.dart';
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
        home: ListProduct());
  }
}
