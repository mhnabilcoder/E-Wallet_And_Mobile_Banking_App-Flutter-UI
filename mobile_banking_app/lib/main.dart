import 'package:flutter/material.dart';

import 'UI/homepage/homepage.dart';
import 'UI/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.light(primary: Color(0xffe02469),),
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

