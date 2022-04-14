import 'package:communi1/screens/chattingScreen.dart';
import 'package:flutter/material.dart';
import 'package:communi1/screens/starterScreen.dart';
import 'screens/starterScreen.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: ParentScreen.id,
      routes: {
        ParentScreen.id: (context) => ParentScreen(),
        TimeLine.id: (context) => TimeLine(),
      },
    );
  }
}
