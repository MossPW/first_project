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
        body: ListView.builder(
            itemCount: 150,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(Icons.list_alt),
                title: Text('Item $index'),
                subtitle: Text('LoremploLoremploLoremplo'),
                trailing: Icon(Icons.add),
              );
            }));
  }
}
