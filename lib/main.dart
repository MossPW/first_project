import 'package:firebase_core/firebase_core.dart';
import 'package:first_project/firebase_options.dart';
import 'package:first_project/screen/animation_screen/my_animation.dart';
import 'package:first_project/screen/const/color.dart';
import 'package:first_project/screen/const/style.dart';
import 'package:first_project/screen/firebase_db_screen/list_firebase_data.dart';
import 'package:first_project/screen/product_screen/list_product.dart';
import 'package:first_project/screen/test_widget_screen/content_screen.dart';
import 'package:first_project/screen/test_widget_screen/greeting_screen.dart';
import 'package:first_project/screen/test_widget_screen/home_screen.dart';
import 'package:first_project/screen/api_screen/list_user_screen.dart';
import 'package:first_project/screen/api_screen/list_user_screen_v2.dart';
import 'package:first_project/screen/test_widget_screen/simple_form_screen.dart';
import 'package:first_project/screen/test_widget_screen/workshop_form_screen.dart';
import 'package:first_project/screen/ui_avand_screen/ui_advand.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool isLightMode = true;

  void toggleMode() {
    setState(() {
      isLightMode = !isLightMode;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter First Project',
        debugShowCheckedModeBanner: false,
        theme: isLightMode
            ? ThemeData.light()
                .copyWith(scaffoldBackgroundColor: Colors.lightBlueAccent)
            : ThemeData.dark()
                .copyWith(scaffoldBackgroundColor: Colors.blueGrey),
        themeMode: ThemeMode.system,
        home: PageTest(toggleMode: toggleMode));
  }
}

class PageTest extends StatelessWidget {
  final VoidCallback toggleMode;
  const PageTest({super.key, required this.toggleMode});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Test Theme'),
          actions: [
            IconButton(onPressed: toggleMode, icon: Icon(Icons.switch_left))
          ],
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Title', style: Theme.of(context).textTheme.bodyLarge),
            Text('smals', style: Theme.of(context).textTheme.headlineLarge),
            Text('M', style: Theme.of(context).textTheme.displayLarge),
            Text('สวัสดี', style: title1.copyWith(fontSize: 48)),
            Text('ขอบคุณ', style: body1),
          ],
        )));
  }
}
