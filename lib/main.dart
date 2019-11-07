import 'package:flutter/material.dart';
import 'package:poker_cards/splash.dart';

void main() => runApp(PokerCardsApp());

class PokerCardsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Poker Cards',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Splash(),
    );
  }
}