import 'package:flutter/material.dart';
import 'package:shop/modules/welcome/welcome_screen.dart';

import 'models/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'AndikaNewBasic',

        primarySwatch: Colors.blue,
      ),
      home: WelcomeScreen(),
    );
  }
}

