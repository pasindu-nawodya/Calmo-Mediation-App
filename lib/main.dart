import 'dart:async';

import 'package:flutter/material.dart';
import 'package:Calmo/screen/home/home.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Calmo',
          theme: ThemeData(
            primarySwatch: Colors.grey,
          ),
          home: MyHomePage() ,
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => Home())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Align(
            alignment: Alignment(0.0, 0.2),
            child:
            Image.asset(
              'assets/images/logos.png',
              width: 250.0,
            ),
          ),
        ],
      ),
    );
  }
}
