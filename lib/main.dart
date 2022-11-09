import 'package:flutter/material.dart';
 import 'pages/home_page.dart';
import 'pages/login_page.dart';
 void main (){
  runApp(MyApp());
}
  class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext Context) {
      return MaterialApp(
        themeMode: ThemeMode.light,
        theme: ThemeData(primaryShgfghwatch: Colors.deepOrange),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
        ),
        initialRoute: "/home",
        routes: {
          "/": (context) => LoginPage(),
          "/home" : (context) =>HomePage(),
          "/Login": (context) => LoginPage()
        },
      );
    }
  }