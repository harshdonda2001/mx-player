import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/homescreen.dart';
import 'package:flutter_application_1/wiget/drawer.dart';

class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        backgroundColor: Color(0xFF121B21),
        appBar: AppBar(
          backgroundColor: Color(0xFF121B21),
          iconTheme: IconThemeData(color: Colors.white),
          title: Row(
            children: [
              Icon(
                Icons.play_circle,
                color: Colors.blue,
              ),
              Text(
                "MXPLAYER",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          actions: [
            Icon(
              Icons.search,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.notifications_active_rounded,
              color: Colors.white,
            ),
          ],
        ),
        drawer: Mydrawer(),
        body: Column(
          children: [
            SizedBox(
              height: 40,
              child: TabBar(
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 5,
                tabs: [
                  Tab(
                    child: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "shows",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Movies",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "new&hot",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Mxgold",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Radio",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "MxVidesi",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Homescreen(),
                  Homescreen(),
                  Homescreen(),
                  Homescreen(),
                  Homescreen(),
                  Homescreen(),
                  Homescreen(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
