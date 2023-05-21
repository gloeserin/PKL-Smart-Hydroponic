import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hidroponik/page/history_page.dart';
import 'package:flutter_hidroponik/page/home_page.dart';
import 'package:flutter_hidroponik/page/profile_page.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  var listWidget = [ 
    const HomePage(),
    const HistoryPage(),
    const ProfilePage(),
  ];
  int navIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F4F8),
      body: listWidget[navIndex],
      
      bottomNavigationBar: CurvedNavigationBar( 
        backgroundColor: Colors.white,
        color: Color(0xFF82AC7E),
        animationDuration: Duration(milliseconds: 300),
        onTap: (index){ 
           setState(() {
            navIndex = index;
          });
        },
        
        items: [
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          Icon(
            Icons.history_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.person,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}