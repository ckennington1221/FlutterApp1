import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:qsmartflutter/monitor.dart';
import 'package:qsmartflutter/smokingCheatShee.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'qSmart',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MenuPage(),
    );
  }
}

class MenuPage extends StatelessWidget {
  MenuPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu')
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey,
          child: Column(
            children: <Widget>[
              MenuButton(title: "IQ130 Monitor", desc: "Monitor and Modify your IQ130 unit", image: "images/img_dir_mon.png"),
              MenuButton(title: "Meat Temp Guide", desc: "Not sure what temp to cook to? Check here!", image: "images/img_dir_meat_temp.png"),
              MenuButton(title: "Meat Smoking Cheat Sheet", desc: "A guide to choosing smoking wood and cooking temps", image: "images/img_dir_smoke_cs.png")
            ]
          )
        )
    );
  }
}


class MenuButton extends StatelessWidget{
  MenuButton({Key key, this.title, this.image, this.desc}) : super(key: key);

  final String image;
  final String title;
  final String desc;



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0,0,0,16.0),
      width: double.infinity,
        child: RaisedButton(
          padding: EdgeInsets.all(0.01),
          child: Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Image.asset(image, fit: BoxFit.fill),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text(title, style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            //width: double.infinity,
                            //color: Colors.indigo,
                            child: Text(desc, textAlign: TextAlign.center),
                        )
                      ],
                    )
                  )
                ],
              ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder:(context) => SmokingCS()));
          },
        ),
    );
  }

}




//Expanded(
//flex: 5,
//child: Column(
//
//mainAxisSize: MainAxisSize.min,
//mainAxisAlignment: MainAxisAlignment.start,
//children: <Widget>[
//Flexible(
//child: Container(
//color: Colors.red,
//child: Text(title)
//)
//),
//Flexible(
//child: Container(
//color: Colors.blue,
//child: Text(desc)
//)
//)
//],
//)
//)