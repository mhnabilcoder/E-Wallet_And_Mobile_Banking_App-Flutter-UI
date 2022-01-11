import 'package:flutter/material.dart';
import 'package:mobile_banking_app/UI/homepage/homepage.dart';
import 'package:mobile_banking_app/UI/inbox.dart';
import 'package:mobile_banking_app/UI/scanpage.dart';

class mainScreen extends StatefulWidget {
  const mainScreen({Key? key}) : super(key: key);

  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ScanScreen(),
    InboxScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color: Colors.black87,),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline,color: Colors.black87,),label: "Message"),
          BottomNavigationBarItem(icon: Icon(Icons.email_outlined,color: Colors.black87,),label: "Account"),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}


