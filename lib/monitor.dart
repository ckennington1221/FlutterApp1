import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MonitorPage extends StatelessWidget {
  MonitorPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
              width: double.infinity,
              height: double.infinity,
              padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
              color: Colors.grey,
              child: Column(
                children: <Widget>[
                  Card( //device name
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 8.0),
                      color: Colors.white,
                      child: Row(
                        children: <Widget>[
                          Container(
                              width: MediaQuery.of(context).size.width * 0.75,
                              height: MediaQuery.of(context).size.height * 0.10,
                              padding: EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                              //color: Colors.red,
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Device Name", style: TextStyle(fontSize: 26.0))

                              )
                          ),
                          Container(
                            //color: Colors.blue,
                              width: MediaQuery.of(context).size.width * 0.20,
                              height: MediaQuery.of(context).size.height * 0.10,
                              child: FractionallySizedBox(
                                  heightFactor: 0.3,
                                  widthFactor: 0.3,
                                  child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          shape: BoxShape.circle
                                      )
                                  )
                              )
                          )
                        ],
                      )
                  ),  //End of Device Name Card
                  Card( //Pit Temp
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 8.0),
                    color: Colors.white,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.30,
                      child: Center(
                        child: Text("255", style: TextStyle(fontSize: 70),)
                      )
                    )
                  ),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.15,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Card(
                            color: Colors.white,
                            margin: EdgeInsets.fromLTRB(0, 0, 4.0, 0),
                            child: Container(
                              height: double.infinity,
                              child: Text("TEST")
                            )
                          )
                        ),
                        Expanded(
                            flex: 1,
                            child: Card(
                                color: Colors.white,
                                margin: EdgeInsets.fromLTRB(2.0, 0, 2.0, 0),
                                child: Container(
                                    height: double.infinity,
                                    child: Text("TEST")
                                )
                            )
                        ),
                        Expanded(
                            flex: 1,
                            child: Card(
                                color: Colors.white,
                                margin: EdgeInsets.fromLTRB(4.0, 0, 0, 0),
                                child: Container(
                                    height: double.infinity,
                                    child: Text("TEST")
                                )
                            )
                        ),
                      ],
                    ),
                  )
                ],
              )
          )

        )
    );
  }
}
