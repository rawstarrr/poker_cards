import 'package:flutter/material.dart';

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
    'Coffee',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
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
    return Card(
      elevation: 10,
      color: Colors.red[800],
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
