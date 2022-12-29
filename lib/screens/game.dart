import 'package:flutter/material.dart';

class Game extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121B21),
      appBar: AppBar(
        title: Text(
          "Game",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 300,
              width: 350,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage("assets/Datanotfound.png"),
                    fit: BoxFit.fill),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
