import 'package:exercise_01/pages/login_Page.dart';
import 'package:exercise_01/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:exercise_01/utils/routes.dart';

import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ), //Themedata
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => LoginPage(),
        MyRoutes.loginRoute: (context) => HomePage(),
      },
    );
  }
}
