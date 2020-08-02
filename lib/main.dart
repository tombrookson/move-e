import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:move_e/components/homepage/reviews.dart';
import 'package:move_e/components/homepage/titles.dart';
import 'package:move_e/screens/search.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Move-E',
      theme: ThemeData(
        primaryColor: Colors.white,
        fontFamily: 'FiraSans'
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: null,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              pushSearch(context);
            },
            color: Colors.black
          ),
        ],
        backgroundColor: Colors.white
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Titles(),
            Container(
              width: 10,
              height: 20,
            ),
            Reviews(),
          ],
        ),
      ),
    );
  } 
}
