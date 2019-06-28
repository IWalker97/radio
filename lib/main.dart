import 'dart:math';

import 'package:flutter/material.dart';
import 'package:radio/Theme.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World!',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading: IconButton(
              //Back Icon
              icon: Icon(
                Icons.arrow_back,
              ),
              color: const Color(0xFFF4C109),
              onPressed: () {},
            ),
            title: Text('Hello World!'),
            actions: <Widget>[
              //Menu
              IconButton(
                icon: Icon(
                  Icons.menu,
                ),
                color: const Color(0xFFF4C109),
                onPressed: () {},
              ),
            ],
          ),
          body: Column(
            children: <Widget>[
              //seek  bar
              Expanded(
                child: Center(
                  child: Container(width: 125.0,
                  height: 125.0,
                  child: ClipOval(
                    clipper: CircleClipper(),
                    child: Image.network('https://www.fg-a.com/wallpapers/2017-red-flower-on-black.jpg',fit: BoxFit.cover,)),),
                ),
              ),

              //vis

              Container(
                width: double.infinity,
                height: 125.0,
              ),
              //song
              Container(
                color: accentColor,
                child: Padding(
                  padding: const EdgeInsets.only(top: 40.0, bottom: 50.0),
                  child: Column(
                    children: <Widget>[
                      RichText(
                        text: TextSpan(text: '', children: [
                          TextSpan(
                            text: 'Song Title\n',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 4.0,
                              height: 1.5,
                            ),
                          ),
                          TextSpan(
                            text: 'Arist Name',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.75),
                              fontSize: 12.0,
                              letterSpacing: 4.0,
                              height: 1.5,
                            ),
                          )
                        ]),
                      ),
                      new Row(
                        children: <Widget>[
                          Expanded(child: Container()),
                          IconButton(
                            icon: Icon(
                              Icons.volume_mute,
                            ),
                            onPressed: () {},
                          ),

                          
                          Expanded(child: Container()),
                          RawMaterialButton(
                            shape: CircleBorder(),
                            fillColor: Colors.white,
                            splashColor: lightColor,
                            highlightColor: lightColor.withOpacity(0.5),
                            elevation: 10.0,
                            highlightElevation: 5.0,
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.play_arrow,
                                color: darkColor,
                                size: 35.0,
                              ),
                              
                            ),
                          ),
                          Expanded(child: Container()),
                          IconButton(
                            icon: Icon(
                              Icons.volume_mute, 
                            color: Colors.white,
                            ), 
                            onPressed: () {},
                          ),
                          Expanded(child: Container()),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}

class CircleClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    // TODO: implement getClip
    return new Rect.fromCircle(
      center: new Offset(size.width / 2, size.height /2),
      radius: min(size.width, size.height) /2,
    );
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
  

}