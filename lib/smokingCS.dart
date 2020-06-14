import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SmokingCS extends StatefulWidget {
  SmokingCS({Key key}) : super(key: key);

  @override
  _SmokingState createState() => new _SmokingState();
}

class _SmokingState extends State<SmokingCS> {
  int selectedMeat = 0;
  int selectedFuel = 0;

  @override
  Widget build(BuildContext context) {
    final List<String> _meat = ['Beef', 'Pork', 'Poultry', 'Lamb', 'Venison', 'Seafood'].toList();
    final List<String> _fuel = ['Briquettes', 'Lump Charcoal', 'Wood'].toList();
    final List<String> _meatDescriptions = [
      'Classic BBQ meat, lots of fatty cuts which smoke great - Brisket, Ribs',
      'Lots of great cuts - Ribs and Shoulder are BBQ classics & fairly easy',
      'Lots of good options with chicken or turkey - Whole bird, Wings, Legs',
      'Lamb Shoulder and Leg are fatty enough to work great in a smoker',
      'Quite gamey and potentially tricky - Venison Roast works well',
      'Quick and easy options - Salmon and shrimp smoke great'];
    final List<String> _meatPreparations = [
      'Trim excess fat and apply rub and seasoning',
      'Inject, rub and leave to rest - Skin and trim ribs',
      'Brine full birds - rub and season',
      'Season, rub, leave to rest',
      'Brine/inject, rub and season',
      'Debone fish, dry brine, rub and season'];

    return Scaffold(
        appBar: AppBar(
            title: Text('Smoking Cheat Sheet')
        ),
        body: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                    width: double.infinity,
                    child: Center(
                        child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              hint: Text("Pick a meat"),
                              value: _meat.elementAt(selectedMeat),
                              items: _meat.map((String item) =>
                                  DropdownMenuItem(value:item, child:Text(item))).toList(),
                              onChanged: (value) {
                                setState(() {
                                  selectedMeat = _meat.indexOf(value);
                                });
                              },
                            )
                        )
                    )
                ),
                Separator(),
                Text("Description", style: TextStyle(fontWeight: FontWeight.bold)),
                Flexible(
                    child: Container(
                        margin: EdgeInsets.fromLTRB(2.0, 4.0, 2.0, 10.0),
                        child: Text(_meatDescriptions.elementAt(selectedMeat), textAlign: TextAlign.center, style: TextStyle(fontSize: 18.0))
                    )
                ),
                Text("Preparation", style: TextStyle(fontWeight: FontWeight.bold)),
                Flexible(
                    child: Container(
                        margin: EdgeInsets.fromLTRB(2.0, 4.0, 2.0, 10.0),
                        child: Text(_meatPreparations.elementAt(selectedMeat), textAlign: TextAlign.center, style: TextStyle(fontSize: 18.0))
                    )
                ),
                Separator(),
                Container(
                    width: double.infinity,
                    child: Center(
                        child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              hint: Text("Pick a fuel"),
                              value: _fuel.elementAt(selectedFuel),
                              items: _fuel.map((String item) =>
                                  DropdownMenuItem(value: item, child: Text(item))).toList(),
                              onChanged: (value) {
                                setState(() {
                                  selectedFuel = _fuel.indexOf(value);
                                });
                              },
                            )
                        )
                    )
                ),
                Separator(),
                Flexible(
                    child: Container(
                        color: Colors.red,
                        margin: EdgeInsets.fromLTRB(2.0, 4.0, 2.0, 10.0),
                        child: Text("Your standard charcoal - cheap, even chunks that burn very consistently for long periods of time and are easy to light. \n\n"
                            "Downsides include - struggles to reach really high temperatures and chemicals used in the creation which can lead to lots of ash.", textAlign: TextAlign.center, style: TextStyle(fontSize: 18.0))
                    )
                ),
              ],
            )
        )
    );
  }
}


class Separator extends StatelessWidget{
  Separator({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
        height: 1,
        width: MediaQuery.of(context).size.width * 0.8,
        margin: EdgeInsets.fromLTRB(0, 10.0, 0, 10.0),
        color: Colors.blue
    );
  }
}
