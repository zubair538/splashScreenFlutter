import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      body: Stack(
        //here, we'll place a text on top an image and position the text to the bottom left corner
        children: <Widget>[
          new Image.asset(
            'images/home.jpg',
            fit: BoxFit.fill,
            height: double.infinity,
            width: double.infinity,
          ),
          //lets position the text to the bottom left corner
          Container(color: Colors.blue.withOpacity(0.8)),
          Center(
            child: Container(
              child: Image.asset(
                'images/logo.png',
                width: 80,
                height: 80,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 90),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Dots(),
                SizedBox(width: 5,),
                Dots(),
                SizedBox(width: 5,),
                Dots(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Dots extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 5,
      decoration: new BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
    );
  }
}
