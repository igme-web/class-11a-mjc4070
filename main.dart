import 'package:flutter/material.dart';

import 'page_home.dart';
import 'page_search.dart';
import 'page_settings.dart';
import 'page_profile.dart';

int currentBottomTab = 0;

final List<Widget> bottomNavScreens = [
  PageHome(),
  PageSearch(),
  PageSettings(),
  PageProfile(),
];

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Demo11a());
  }
}

class Demo11a extends StatefulWidget {
  const Demo11a({super.key});

  @override
  State<Demo11a> createState() => _Demo11aState();
}

class _Demo11aState extends State<Demo11a> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Week 11B Demo")),
      body: bottomNavScreens[currentBottomTab],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: currentBottomTab,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home",backgroundColor: Colors.purple),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search",backgroundColor:Colors.blue),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.portrait),
            label: "Profile",
            backgroundColor: Colors.green,
          ),
        ],
        onTap: (value) {
          setState(() {
            currentBottomTab = value;
          });
        },
      ),
    );
  }
}


  @override
  State<Demo11a> createState() => _Demo11aState();
}

class _Demo11aState extends State<Demo11a> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title: Text("Week 11B Demo"),
        ),
        body: Center(
          child: Text('Hello World!'),
        ),
    );
  }
}
