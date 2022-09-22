import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(children: [
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric().copyWith(top: 0),
            decoration: BoxDecoration(
              image:  DecorationImage(image:AssetImage('assets/images/yoga.jpg'),
                fit: BoxFit.fill
              )
            ),
          ),
          Container(
            height: 700,
            width: MediaQuery.of(context).size.width,
            margin:
            EdgeInsets.symmetric().copyWith(top: 280),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.elliptical(20, 20), topLeft:Radius.elliptical(20, 20 )),
            ),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Yoga Master Class', style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),),
                    SizedBox(height: 20,),
                    Row(
                     // crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                      Icon(Icons.calendar_month, color: Colors.grey[400],),
                        SizedBox(width: 10,),
                      Text('Friday, June 27', style: TextStyle(color: Colors.grey[400], fontSize: 20,),),
                        SizedBox(width: 20,),
                        Icon(Icons.alarm, color: Colors.grey[400],),
                        SizedBox(width: 10,),
                        Text('20: 00', style: TextStyle(color: Colors.grey[400], fontSize: 20,),),
                    ],),
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text('16, Joined', style: TextStyle(color: Colors.grey, fontSize: 20),),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric().copyWith(left: 0),
                            child: CircleAvatar(
                              radius: 20.0,
                              backgroundImage: AssetImage('assets/images/sam.png'),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric().copyWith(left: 30),
                            child: CircleAvatar(
                              radius: 20.0,
                              backgroundImage: AssetImage('assets/images/yoga.jpg'),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric().copyWith(left: 60),
                            child: CircleAvatar(
                              radius: 20.0,
                              backgroundImage: AssetImage('assets/images/congratulations.jpg'),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            padding: EdgeInsets.all(0.0),
                            decoration: BoxDecoration(
                              color: Colors.pink[200],
                              shape: BoxShape.circle
                            ),
                            margin: EdgeInsets.symmetric().copyWith(left: 90),
                            child: Center(child: Text("+13", style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),)),
                            ),
                        ],),
                    ],),
                    SizedBox(height: 20,),
                    Text("Description", style: TextStyle(fontSize: 30, color: Colors.black),),
                    SizedBox(height: 20,),
                    Column(
                      children: [
                        SizedBox(
                          height: 120,
                          width: MediaQuery.of(context).size.width,
                          child:
                        SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Text("It's hard to find a wellness trend that has enjoyed more sustained buzz than yoga The number of people practicing yoga in the "
                              "United States grew more than 50 percent from 2012 to 2016, according to data. The survey found that people who practice yoga are more"
                              " likely to be active in other forms of exercise like running or cycling, too, and that one in every three Americans said they were "
                              "somewhat or very likely to practice yoga in the next 12 months.right up arro No single reason is driving people to the millennia-old "
                              "practice. Experts suspect it has something to do with yogas combination of physical and mental health benefits.",
                              style: TextStyle(fontSize: 23, color: Colors.grey[400])
                          ),
                        ),
                          ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Text("Location", style: TextStyle(fontSize: 30, color: Colors.black),),
                    SizedBox(height: 10,),
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/images/gray_map.png'),
                          fit: BoxFit.cover
                        ),
                      ),
                    ),

                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size.fromHeight(60),

                            primary: Colors.blue[600],
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.elliptical(10, 10)))
                        ),
                        onPressed: () {},
                        child: Text('Join Now ~\$99', style: TextStyle(color: Colors.white),))
                ],),
              ),
            ),
          ),
        ],),
      );
  }
}
