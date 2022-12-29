import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/downloadescreen.dart';
import 'package:flutter_application_1/screens/mxoriginalwebshows.dart';
import 'package:flutter_application_1/screens/mxplayback.dart';
import 'package:flutter_application_1/screens/mxradio.dart';
import 'package:flutter_application_1/screens/mxtube.dart';
import 'package:flutter_application_1/screens/mylist.dart';
import 'package:flutter_application_1/screens/topshows.dart';
import 'package:flutter_application_1/screens/watchforme.dart';
import 'package:flutter_application_1/screens/worldofcrime.dart';

class Homescreen extends StatefulWidget {
  Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List image = [
    "assets/puspa.png",
    "assets/kgf2.png",
    "assets/ramsetu.png",
    "assets/voilence.png",
    "assets/london.png"
  ];
  List image1 = [
    "assets/bhuakal.png",
    "assets/campus.png",
    "assets/hit.png",
    "assets/sikshamandal.png",
    "assets/aaft.png",
  ];
  List image2 = [
    "assets/adipurush.png",
    "assets/brahmastra.png",
    "assets/dishoom.png",
    "assets/pathan.png",
    "assets/voilence.png",
  ];
  List image3 = [
    "assets/ramsetu.png",
    "assets/rakshabandhan.png",
    "assets/kgf2.png",
    "assets/atrangi.png",
    "assets/adipurush.png"
  ];
  List image4 = [
    "assets/cid.png",
    "assets/comedy.png",
    "assets/tmkoc.png",
    "assets/sub.png",
    "assets/kapilsharma.png"
  ];
  List Category1 = [
    "MyList",
    "Download",
    "Mxtube",
    "MxRadio",
    "MyList",
    "Download",
    "Mxtube",
    "MxRadio",
  ];
  List Category2 = [
    Icons.add,
    Icons.download,
    Icons.live_tv,
    Icons.mic,
    Icons.add,
    Icons.download,
    Icons.live_tv,
    Icons.mic,
  ];
  List Category5 = [
    MyListScreen(),
    Downloadscreen(),
    Mxtube(),
    MxRadio(),
    MyListScreen(),
    Downloadscreen(),
    Mxtube(),
    MxRadio(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121B21),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            height: 250,
            child: ListView.builder(
              itemCount: image.length,
              scrollDirection: Axis.horizontal,
              itemExtent: 400,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 500,
                  width: 50,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.purpleAccent,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(image[index]), fit: BoxFit.fill),
                  ),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 90,
            child: ListView.builder(
              itemCount: Category1.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    InkWell(
                      child: Container(
                        height: 50,
                        width: 55,
                        child: Icon(Category2[index]),
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Category5[index],
                            ));
                      },
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 80,
                      child: Text(
                        Category1[index],
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "world of crime",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  alignment: Alignment.centerLeft,
                ),
                InkWell(
                  child: Container(
                    height: 40,
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "See all",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    alignment: Alignment.centerRight,
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WorldOfCrime(),
                        ));
                  },
                ),
              ],
            ),
          ),
          Container(
            height: 250,
            child: ListView.builder(
              itemCount: image.length,
              scrollDirection: Axis.horizontal,
              itemExtent: 150,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 500,
                  width: 50,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(image[index]), fit: BoxFit.fill),
                  ),
                );
              },
            ),
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Mx original web shows",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  alignment: Alignment.centerLeft,
                ),
                InkWell(
                  child: Container(
                    height: 40,
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "See all",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    alignment: Alignment.centerRight,
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MXOriginalWebShows(),
                        ));
                  },
                ),
              ],
            ),
          ),
          Container(
            height: 250,
            child: ListView.builder(
              itemCount: image1.length,
              scrollDirection: Axis.horizontal,
              itemExtent: 150,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 500,
                  width: 50,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.purpleAccent,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(image1[index]), fit: BoxFit.fill),
                  ),
                );
              },
            ),
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Mx Playback'22",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  alignment: Alignment.centerLeft,
                ),
                InkWell(
                  child: Container(
                    height: 40,
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "See all",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    alignment: Alignment.centerRight,
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Mxplayback(),
                        ));
                  },
                ),
              ],
            ),
          ),
          Container(
            height: 250,
            child: ListView.builder(
              itemCount: image2.length,
              scrollDirection: Axis.horizontal,
              itemExtent: 150,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 500,
                  width: 50,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.purpleAccent,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(image2[index]), fit: BoxFit.fill),
                  ),
                );
              },
            ),
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Top shows on Mx",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  alignment: Alignment.centerLeft,
                ),
                InkWell(
                  child: Container(
                    height: 40,
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "See all",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    alignment: Alignment.centerRight,
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TopShows(),
                        ));
                  },
                ),
              ],
            ),
          ),
          Container(
            height: 250,
            child: ListView.builder(
              itemCount: image1.length,
              scrollDirection: Axis.horizontal,
              itemExtent: 250,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 500,
                  width: 50,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(image1[index]), fit: BoxFit.fill),
                  ),
                );
              },
            ),
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Watch For Me",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  alignment: Alignment.centerLeft,
                ),
                InkWell(
                  child: Container(
                    height: 40,
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "See all",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    alignment: Alignment.centerRight,
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WatchForMe(),
                        ));
                  },
                ),
              ],
            ),
          ),
          Container(
            height: 250,
            child: ListView.builder(
              itemCount: image3.length,
              scrollDirection: Axis.horizontal,
              itemExtent: 150,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 500,
                  width: 50,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.purpleAccent,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(image3[index]), fit: BoxFit.fill),
                  ),
                );
              },
            ),
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Tv shows",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  alignment: Alignment.centerLeft,
                ),
                Container(
                  height: 40,
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "See all",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  alignment: Alignment.centerRight,
                ),
              ],
            ),
          ),
          Container(
            height: 250,
            child: ListView.builder(
              itemCount: image4.length,
              scrollDirection: Axis.horizontal,
              itemExtent: 250,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 500,
                  width: 50,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.purpleAccent,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(image4[index]), fit: BoxFit.fill),
                  ),
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}
