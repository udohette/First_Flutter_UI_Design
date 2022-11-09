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
  List<Color> colors = [
    Colors.pink.shade200,
    Colors.grey.shade200,
    Colors.grey.shade200,
    Colors.grey.shade200
  ];
  List<String> imgPath = [
    'assets/images/nature.jpg',
    'assets/images/art.png',
    'assets/images/music.png/',
    'assets/images/art.png'
  ];

  List<String> imgPath2 = [
    'assets/images/yoga.jpg',
    'assets/images/congratulations.jpg',
    'assets/images/yoga.jpg'
  ];

  List<String> imgPath3 = [
    'assets/images/sam.png',
    'assets/images/yoga.jpg',
    'assets/images/congratulations.jpg'
  ];
  List<String> firstText = [
    'FRI June 27 - 20:00',
    'FRI June 27 - 20:00',
    'FRI June 27 - 20:00'
  ];
  List<String> secondText = [
    'Yoga masterclass',
    'Yoga masterclass',
    'Yoga masterclass'
  ];
  List<String> thirdText = ['86, Joined', '17, Joined', '18, Joined'];
  List<String> fourthText = [
    "Join Now ~ \$49",
    "Join Now ~ \$98",
    "Join Now ~ \$79"
  ];
  List<String> rateText = ['+13', '+13', '+13'];

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
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //added expand to  resolved overflow issues
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Hello,',
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 20),
                            ),
                            Text(
                              'Savanna Nguyen',
                              style: TextStyle(
                                  color: Colors.black, fontSize: height * 0.038),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.pink[200],
                            radius: 27.0,
                            backgroundImage:
                                const AssetImage('assets/images/sam.png'),
                            foregroundColor: Colors.pink,
                          ),
                          Positioned(
                              right: 1,
                              child: Container(
                                margin: EdgeInsets.only(top: 5),
                                height: height / 90,
                                width: height / 90,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius:
                                        BorderRadius.circular(30)),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height / 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //added expand to  resolved overflow issues
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        height: height / 15,
                        width: height / 2,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                              color: Colors.grey,
                              style: BorderStyle.solid,
                              width: 1),
                          //boxShadow:[BoxShadow(color: Colors.grey)]
                        ),
                        child: TextField(
                          controller: searchField,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide.none),
                              hintText: 'Search for Event...',
                              prefixIcon: const Icon(
                                Icons.search,
                                color: Colors.grey,
                              ),
                              suffixIcon: const Icon(
                                Icons.mic,
                                color: Colors.grey,
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: height / 30,
                    ),
                    Container(
                        margin: EdgeInsets.only(right: 10),
                        height: height / 15,
                        width: height / 15,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.grey)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.link_sharp,
                              color: Colors.grey,
                            ),
                          ],
                        ))
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        // color: Colors.green,
                        //height: 200,
                        height: height / 5,
                        // width: double.maxFinite,
                        width: MediaQuery.of(context).size.width,
                        child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            //padding: const EdgeInsets.all(8),
                            itemCount: texts.length,
                            itemBuilder: (context, index) {
                              return Container(
                                height: height / 5,
                                width: width / 3.9,
                                margin: EdgeInsets.only(left: 10, right: 2),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: colors[index],
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 30.0,
                                      backgroundImage:
                                          AssetImage(imgPath[index]),
                                    ),
                                    const SizedBox(
                                      height: 0,
                                    ),
                                    Text(
                                      texts[index],
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20),
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height / 80,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Events For you",
                      style: GoogleFonts.alef(
                          fontWeight: FontWeight.bold, fontSize: height * 0.03)),
                ),
                //SizedBox(height: MediaQuery.of(context).size.height / 200),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        //color: Colors.green,
                        height: height/2.2,
                        width: width,
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: firstText.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.only(left: 10, right: 2),
                              //margin: EdgeInsets.only(right: 10),
                              //height: MediaQuery.of(context).size.height / 4,
                              //width: MediaQuery.of(context).size.width   1000/2 = 500,
                              width:
                                  MediaQuery.of(context).size.width / 1.4,
                              child: Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(bottom: height *0.025),
                                        height: height / 5.5,
                                        width: width / 1.4,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          borderRadius: const BorderRadius.all(
                                              Radius.elliptical(18, 18)),
                                          //color: Colors.pink
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  imgPath2[index]),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      Positioned(
                                        right: 10.0,
                                        bottom: 0,
                                        child: Container(
                                          height: MediaQuery.of(context).size.height / 20,
                                          width: MediaQuery.of(context).size.height / 20,
                                          padding: EdgeInsets.all(5.0),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(30)),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.pink[200],
                                              borderRadius: BorderRadius.circular(30),
                                            ),
                                            child: const Icon(Icons.bookmark, color: Colors.white,),),
                                          //Image.asset('assets/images/music.png'),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                      height: MediaQuery.of(context).size.height / 50),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Text(
                                      firstText[index],
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: MediaQuery.of(context)
                                          .size
                                          .height * 0.022),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Text(
                                      secondText[index],
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: MediaQuery.of(context)
                                              .size
                                              .height * 0.03),
                                    ),
                                  ),
                                  SizedBox(
                                      height: MediaQuery.of(context)
                                              .size
                                              .height /
                                          70),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Row(
                                      //crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          thirdText[index],
                                          style: const TextStyle(
                                              color: Colors.grey,
                                              fontSize: 15),
                                        ),
                                        SizedBox(
                                          width: width / 80,
                                        ),
                                        //to take the size of the available space
                                        Expanded(
                                          child: Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                20,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                5,
                                            child: ListView.builder(
                                                shrinkWrap: true,
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemCount: imgPath3.length,
                                                itemBuilder:
                                                    (BuildContext context,
                                                        index) {
                                                  return Stack(
                                                    clipBehavior: Clip.none,
                                                    children: [
                                                      Container(
                                                        margin: EdgeInsets
                                                                .symmetric()
                                                            .copyWith(
                                                                left: 0),
                                                        child: CircleAvatar(
                                                          radius: 20.0,
                                                          backgroundImage:
                                                              AssetImage(
                                                                  imgPath3[
                                                                      index]),
                                                        ),
                                                      ),
                                                    ],
                                                  );
                                                }),
                                          ),
                                        ),

                                        Text(
                                          rateText[index],
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold,
                                              fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height * 0.018),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          fourthText[index],
                                          style: TextStyle(
                                              color: Colors.indigo,
                                              fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height * 0.025),
                                        )),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
