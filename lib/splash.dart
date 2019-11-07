import 'dart:async';

import 'package:flutter/material.dart';
import 'package:poker_cards/cards.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(
      Duration(seconds: 5),
      (_) => Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => Cards())),
    );

    return Container(
      color: Color(0xfff7e117),
      child: Center(
        child: Image.asset(
          'images/logo.png',
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}
