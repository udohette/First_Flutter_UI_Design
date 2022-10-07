import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondScreen extends StatefulWidget {

  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  TextEditingController searchField = TextEditingController();
  var size, height, width;

  List<String> texts = ['All', 'Art', 'Music', 'Nature'];
  List<Color> colors = [Colors.pink.shade200, Colors.grey.shade200, Colors.grey.shade200, Colors.grey.shade200];
  List<String> imgPath = ['assets/images/nature.jpg', 'assets/images/nature.jpg', 'assets/images/nature.jpg', 'assets/images/nature.jpg'];

  // add the icons you want to render for each entry here
  //List<IconData> icons = [Icons.person, Icons.home, Icons.notifications];

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
        margin: EdgeInsets.all(20),
        child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text('Hello,',style: TextStyle(color: Colors.grey, fontSize: 20),),
                   Text('Savanna Nguyen',style: TextStyle(color: Colors.black, fontSize: 35),),
                 ],
               ),
                Stack(
                  children: [
                  CircleAvatar(
                    backgroundColor: Colors.pink[200],
                    radius: 27.0,
                    backgroundImage: AssetImage('assets/images/sam.png'),
                    foregroundColor: Colors.pink,
                  ),
                    Positioned(
                      right: 1,
                        child:
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(30)
                      ),
                    )),
                  ],
                ),
              ],),
              SizedBox(height: 20,),
              Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.grey, style: BorderStyle.solid, width: 1),
                        //boxShadow:[BoxShadow(color: Colors.grey)]
                      ),
                      child: TextField(
                        controller: searchField,
                        decoration: InputDecoration(
                          border:OutlineInputBorder(borderRadius: BorderRadius.circular(30.0), borderSide: BorderSide.none),
                          hintText: 'Search for Event...',
                          prefixIcon: Icon(Icons.search, color: Colors.grey,),
                          suffixIcon: Icon(Icons.mic, color: Colors.grey,)
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.grey)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                        Icon(Icons.link_sharp, color: Colors.grey,),
                      ],)
                    )
                ],),
              SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      color: Colors.green,
                      height: height/6,
                      //width: double.maxFinite,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          //padding: const EdgeInsets.all(8),
                          itemCount: texts.length,
                          itemBuilder: (context, index) {
                            return Container(
                              height: height/6,
                              width: width/4.5,
                              margin: EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: colors[index],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 30.0,
                                      backgroundImage: AssetImage(imgPath[index]),
                                  ),
                                  SizedBox(height: 0,),
                                  Text(texts[index], style: TextStyle(color: Colors.white, fontSize: 20),),
                                ],),
                            );
                          }),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text("Events For you", style: GoogleFonts.alef(fontWeight: FontWeight.bold, fontSize: 30)),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Stack(
                        children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 25),
                          height: height/5,
                          width: width-150,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(Radius.elliptical(18, 18)),
                           //color: Colors.pink
                            image: DecorationImage(image: AssetImage('assets/images/yoga.jpg'),
                              fit: BoxFit.cover
                            ),
                          ),
                        ),
                          Positioned(
                            right: 10.0,
                            bottom: 0,
                              child: Container(
                                height: 50,
                                width: 50,
                                padding: EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30)
                                ),
                                child:
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.pink[200],
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Icon(Icons.bookmark, color: Colors.white,),
                                ),
                                //Image.asset('assets/images/music.png'),
                            ),

                          ),
                      ],),
                        SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text('FRI June 27 - 20:00', style: TextStyle(color: Colors.grey, fontSize: 20),),
                      ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text('Yoga masterclass', style: TextStyle(color: Colors.black, fontSize: 25),),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.start,
                            //crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Text('16, Joined', style: TextStyle(color: Colors.grey, fontSize: 20),),
                            SizedBox(width: width/20,),
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
                            ],),
                              SizedBox(width: 5,),
                              Text('+13', style: TextStyle(color: Colors.grey, fontSize: 20),)
                          ],),
                        ),
                        Padding(
                          child: TextButton(onPressed: (){}, child: Text("Join Now ~ \$99", style: TextStyle(color: Colors.indigo, fontSize: 20),)),
                            padding: EdgeInsets.all(10.0),
                        ),
                    ],),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                      Stack(
                        children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 25),
                          height: height/5,
                          width: width-150,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                               borderRadius: BorderRadius.all(Radius.elliptical(18, 18)),
                              //color: Colors.pink
                              image: DecorationImage(image: AssetImage('assets/images/congratulations.jpg'),
                                fit: BoxFit.cover
                              )
                          ),
                        ),
                        Positioned(
                          right: 10.0,
                          bottom: 0,
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Container(
                                margin: EdgeInsets.all(5),
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  color: Colors.pink[200],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Icon(Icons.bookmark, color: Colors.white,),
                              ),
                        ),
                        ),
                      ],),

                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text('FRI June 27 - 20:00', style: TextStyle(color: Colors.grey, fontSize: 20),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text('Yoga masterclass', style: TextStyle(color: Colors.black, fontSize: 25),),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('16 Joined', style: TextStyle(color: Colors.grey, fontSize: 20),),
                            SizedBox(width: 20,),
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric().copyWith(left: 0),
                                  child: CircleAvatar(
                                    radius: 20.0,
                                    backgroundImage: AssetImage('assets/images/wallpaper.jpg'),
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
                              ],),
                            SizedBox(width: 5,),
                            Text('+13', style: TextStyle(color: Colors.grey, fontSize: 20),)
                          ],),
                      ),
                      Padding(
                          child: TextButton(onPressed: (){}, child: Text("Join Now ~ \$99", style: TextStyle(color: Colors.indigo, fontSize: 20),)),
                          padding: EdgeInsets.all(10.0)),
                    ],),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                      Stack(
                        children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          height: height/5,
                          width: width-150,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
                              image: DecorationImage(image: AssetImage("assets/images/yoga.jpg"),
                                fit: BoxFit.cover
                              )
                              //image: DecorationImage(image: AssetImage('assets/images/congratulations.jpg'))
                          ),
                        ),
                          Positioned(
                           right: 10.0,
                            bottom: 0,
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30)
                                ),
                                child: Container(
                                  margin: EdgeInsets.all(5),
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    color: Colors.pink[200],
                                    borderRadius: BorderRadius.circular(30)
                                  ),
                                  child: Icon(Icons.bookmark, color: Colors.white,),
                                ),
                              ),
                          ),
                      ],),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text('FRI June 27 - 20:00', style: TextStyle(color: Colors.grey, fontSize: 20),),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text('Yoga masterclass', style: TextStyle(color: Colors.black, fontSize: 25),),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('16, Joined', style: TextStyle(color: Colors.grey, fontSize: 20),),
                              SizedBox(width: 20,),
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
                                ],),
                              SizedBox(width: 5,),
                              Text('+13', style: TextStyle(color: Colors.grey, fontSize: 20),)
                            ],),
                        ),
                        Padding(
                            child: TextButton(onPressed: (){}, child: Text("Join Now ~ \$99", style: TextStyle(color: Colors.indigo, fontSize: 20),)),
                            padding: EdgeInsets.all(10.0)),
                    ],),
                ],),
              ),
            ],),
        ),
      ),
      ),
        )
      );
  }
}
