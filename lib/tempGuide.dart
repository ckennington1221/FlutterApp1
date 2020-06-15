import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TempGuidePage extends StatelessWidget {
  TempGuidePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
              color: Colors.white,
              child: Center(
                child: Text("Temp Guide Placeholder")
              )
            )
        )
    );
  }
}
