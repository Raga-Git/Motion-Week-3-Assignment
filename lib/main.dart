import 'package:assignment_raga_2/AktivitasPage.dart';
import 'package:assignment_raga_2/HomePage.dart';
import 'package:assignment_raga_2/PostPage.dart';
import 'package:assignment_raga_2/ProfilePage.dart';
import 'package:assignment_raga_2/SeacrhPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Navbar(),
    );
  }
}

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int index = 0;
  List page = [
    HomePage(),
    SearchPage(),
    PostPage(),
    AktivitasPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[index],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black26,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 40,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        currentIndex: index,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded), label: "Seacrh"),
          BottomNavigationBarItem(
              icon: Icon(Icons.post_add_rounded), label: "Post"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Aktivitas"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
