import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MonitorPage extends StatelessWidget {
  MonitorPage({Key key}) : super(key: key);

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
            child: Text("Monitor")
        )
    );
  }
}