import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_assignment/screens/login_screen.dart';


class SplashScreen extends StatefulWidget {

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.deepOrangeAccent),
      title: 'Splash Screen Demo',
      home: Scaffold(
        backgroundColor: Colors.deepOrangeAccent,
        body: Center(child: MyHomePage()),
        ),
      );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}
class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen(),
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
          color: Colors.deepOrangeAccent,
          borderRadius: BorderRadius.circular(100),
          border: Border.all(color: Colors.white, width: 6.0)
      ),
      child:  Container(
        margin: EdgeInsets.all(30.0),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/logo2.jpg')),
          //color: Colors.white
        ),
      ),
    );
  }
}

