import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class Cards extends StatelessWidget {
  final items = [
    '0',
    '1/2',
    '1',
    '2',
    '3',
    '5',
    '8',
    '12',
    '20',
    '40',
    '100',
    '?',
    '☕',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: GridView.count(
        crossAxisCount: 3,
        childAspectRatio: 0.73,
        crossAxisSpacing: 2.5,
        semanticChildCount: items.length,
        children: items.map((text) => SmallCard(text: text)).toList(),
      ),
    );
  }
}

class SmallCard extends StatelessWidget {
  const SmallCard({this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    
  int min = 0;
  int max = 3;

  Random rnd =  Random();
  var index = min + rnd.nextInt(max - min);

  var animations = ['Stand', 'Dance', 'Jump', 'Wave'];
    
  String animation = animations[index];
  print(animation);

    return Card(
      elevation: 5,
      color: Colors.white,
      child: 
      Stack(
        children: <Widget>[
         
          Center(child: 
            Text(text,
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w500, fontFamily: 'Minion', color: Colors.yellow),
            )
          ),

          Positioned(
            bottom: -20,
            right: -20,
            child: 
            Container(
              width: 100,
              height: 100,
              child: FlareActor(
                  "images/bob.flr",
                  animation: animation,
                ),
            )
              
        )

        ],
      )
    );
  }
}
