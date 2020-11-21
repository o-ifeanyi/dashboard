import 'package:dashboard/dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color(0xFF5A56E8),
        accentColor: Color(0xFFF4BAC8),
        scaffoldBackgroundColor: Color(0xFFEFECF5),
        backgroundColor: Colors.white38,
        textTheme: Theme.of(context).textTheme.copyWith(
          bodyText2: TextStyle(
            fontSize: 10
          )
        ),
        fontFamily: 'Acme'
      ),
      home: DashBoard(),
    );
  }
}
