import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Center(
            //   child: IconButton(
            //     // onPressed: () {
            //     //   Navigator.push(
            //     //       context,
            //     //       MaterialPageRoute(
            //     //         builder: (context) => HomePage(),
            //     //       ));
            //     // },
            //     icon: Icon(Icons.play_circle_fill_sharp),
            //     iconSize: 70,
            //     color: Colors.white,
            //   ),
            // ),
            Center(
              child: Text(
                "MX player",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
