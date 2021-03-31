import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_concept_flutter/start%20screen/start_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Main(),
    );
  }
}

class Main extends StatefulWidget {

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {

  int _currentIndex = 0;

  final List<Widget> children = [
    StartScreen(),
    StartScreen(),
    StartScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.white
      ),
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (int index) {
              setState(() {
                _currentIndex = index;
              });
            },
            selectedItemColor: Colors.orange,
            selectedFontSize: 16,
            selectedIconTheme: IconThemeData(
              size: 28
            ),
            unselectedItemColor: Colors.grey[600],
            unselectedFontSize: 16,
            unselectedIconTheme: IconThemeData(
              size: 28
            ),
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home'
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.shopping_cart),
                label: 'Orders'
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person),
                label: 'Profile'
              ),
            ],
          ),
          backgroundColor: Colors.grey[200],
          body: children[_currentIndex]
        ),
      ),
    );
  }
}