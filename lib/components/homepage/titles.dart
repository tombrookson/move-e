import 'package:flutter/material.dart';

class Titles extends StatefulWidget {
  @override
  _TitlesState createState() => _TitlesState();
}

class _TitlesState extends State<Titles> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Move-E',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
          ),
          Container(
            width: 10,
            height: 10,
          ),
          Text(
            'Latest Movie Reviews',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey
            ),
          ),
        ],
      ),
    );
  }
}