import 'package:exercise_01/pages/login_Page.dart';
import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.purple), //Themedata
      routes: {
        "/": (context) => LoginPage(),
        "/Login": (context) => HomePage(),
      },
    );
  }
}
