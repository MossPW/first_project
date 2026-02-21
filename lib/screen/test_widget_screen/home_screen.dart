import 'package:first_project/screen/test_widget_screen/content_screen.dart';
import 'package:first_project/screen/test_widget_screen/greeting_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigatorExample extends StatefulWidget {
  const BottomNavigatorExample({super.key});
  @override
  State<BottomNavigatorExample> createState() => _BottomNavigatorExampleState();
}

class _BottomNavigatorExampleState extends State<BottomNavigatorExample> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    GreetingScreen(name: 'DevMoss', bgColor: Colors.blue),
    ContentScreen(
      name: 'DevMoss',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Content',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
