import 'package:flutter/material.dart';
import 'package:ui_assignment/screens/first_screen.dart';
import 'package:ui_assignment/screens/login_screen.dart';
import 'package:ui_assignment/screens/second_screen.dart';
import 'package:ui_assignment/screens/splash_screen.dart';
import 'package:ui_assignment/screens/third_screen.dart';

void main() {
  runApp(SplashScreen(key: UniqueKey(), onInitializeComplete: ()=>runApp(MaterialApp(home: LoginScreen(),)) ));
}

class MyApp extends StatefulWidget {
   MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List screens = [FirstScreen(), SecondScreen(), ThirdScreen(), ThirdScreen()];
  List<Color> currentIndexColor = [Colors.pink.shade100, Colors.pink.shade100, Colors.pink.shade100];
  int pageIndex = 0;
  void _onItemTap(int index){
    setState(() {
      pageIndex = index;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Main Screen',
      // theme: ThemeData(
      //   splashColor: Colors.transparent,
      //   hintColor: Colors.transparent,
      //   highlightColor: Colors.transparent,
      //   primaryColor: Colors.pink[200],
      //  // colorScheme: ColorScheme.dark(),
      //
      // ),
      home: SafeArea(
        child: Scaffold(
          // appBar: AppBar(title: Text('Main Screen', style: TextStyle(letterSpacing: 2, fontSize: 15, fontStyle: FontStyle.italic,),),
          // ),
         body: screens.elementAt(pageIndex),
         bottomNavigationBar: BottomNavigationBar(
           currentIndex: pageIndex,
             selectedItemColor: currentIndexColor[pageIndex],
             onTap: _onItemTap,
             iconSize: 30,
             elevation: 5,
             type: BottomNavigationBarType.fixed,
             //backgroundColor: Colors.grey,
             items: [
               BottomNavigationBarItem(label: "", icon: Icon(Icons.home_filled,)),
               BottomNavigationBarItem(label: "", icon: Icon(Icons.bookmark,)),
               BottomNavigationBarItem(label: "",icon: Icon(Icons.list_outlined,)),
               //BottomNavigationBarItem(label: "",icon: Icon(Icons.person,)),
             ],
         ),
        ),
      ),
    );
  }
}
