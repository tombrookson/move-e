import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void pushSearch(BuildContext context) {
    Navigator.of(context).push(
      CupertinoPageRoute<void>(
        fullscreenDialog: true,
        builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              elevation: 0.0,
            ),
            backgroundColor: Colors.white,
            body: Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Stack(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Search',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                        ),
                      ),
                      Container(
                        width: 10,
                        height: 10,
                      ),
                      TextField(
                        autofocus: true,
                        decoration: InputDecoration(
                          hintText: 'Search...',
                          contentPadding: EdgeInsets.all(15.0),
                          isDense: true,
                          fillColor: Color(0xFFf4f5fa), //Color(0xFFf4f5fa)
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(45),
                            borderSide: BorderSide(
                              width: 0, 
                              style: BorderStyle.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }