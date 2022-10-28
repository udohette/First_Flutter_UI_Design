import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  final  VoidCallback onInitializeComplete;
  const SplashScreen({Key? key, required this.onInitializeComplete}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) => widget.onInitializeComplete());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.deepOrangeAccent),
      title: 'Splash Screen Demo',
      home: Scaffold(
        backgroundColor: Colors.deepOrangeAccent,
        body: Center(child: Container(
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
        ),
        ),),
      );
  }
}

