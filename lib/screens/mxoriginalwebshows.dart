import 'package:flutter/material.dart';

class MXOriginalWebShows extends StatelessWidget {
  List image1 = [
    "assets/kgf2.png",
    "assets/hit.png",
    "assets/brahmastra.png",
    "assets/puspa.png",
    "assets/voilence.png",
    "assets/adipurush.png",
    "assets/atrangi.png",
    "assets/rakshabandhan.png",
    "assets/voilence.png",
    "assets/london.png",
    "assets/kgf2.png",
    "assets/hit.png",
    "assets/brahmastra.png",
    "assets/puspa.png",
    "assets/voilence.png",
    "assets/adipurush.png",
    "assets/atrangi.png",
    "assets/rakshabandhan.png",
    "assets/voilence.png",
    "assets/london.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121B21),
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text(
          "Mxoriginalwebseries",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(10),
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 2.0,
                  crossAxisSpacing: 2.0,
                  mainAxisExtent: 200,
                  mainAxisSpacing: 2.0,
                ),
                itemCount: image1.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 100,
                    width: 200,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(image1[index]), fit: BoxFit.fill),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
