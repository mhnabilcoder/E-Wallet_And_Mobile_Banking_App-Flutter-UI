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
        selectedLabelStyle: TextStyle(
          color: Colors.white,
        ),
        selectedIconTheme: IconThemeData(
          color: Colors.white,
          size: 28.0,
        ),
        unselectedIconTheme: IconThemeData(
          color: Colors.white60,
          size: 24.0,
        ),
        backgroundColor: Color(0xffe02469),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem( icon: Icon(Icons.home_outlined,),label: "হোম",),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code,),label: "QR স্ক্যান",),
          BottomNavigationBarItem(icon: Icon(Icons.email_outlined,),label: "ইনবক্স",),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),

    );
  }
}


