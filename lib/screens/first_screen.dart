import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/new.jpg'))),
          ),
          Container(
            width: 900,
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.fromLTRB(20, 0.0, 20, 30.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(60),

                    primary: Colors.indigo.shade400,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.elliptical(10, 10)))
                  ),
                  onPressed: () {},
                  child: Text('Continue', style: TextStyle(color: Colors.white),))
          ),
        ],
      ),
    );
  }
}
