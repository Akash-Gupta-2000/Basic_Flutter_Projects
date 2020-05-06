import 'package:bmicalc/about.dart';
import 'package:bmicalc/constants.dart';
import 'package:bmicalc/developer.dart';
import 'package:flutter/material.dart';

class Draw extends StatefulWidget {
  @override
  _DrawState createState() => _DrawState();
}

class _DrawState extends State<Draw> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: kActiveCardColor,
            ),
            child: Center(
              child: Text(
                'BMI CALC',
                style: kTitleTextStyle.copyWith(fontSize: 30),
              ),
            ),
          ),
          FlatButton(
            child: ListTile(
              leading: Icon(Icons.info),
              title: Text(
                'About the App',
                style: kLabelTextStyle.copyWith(color: Colors.white),
              ),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return About();
              }));
            },
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Developer();
              }));
            },
            child: ListTile(
              leading: Icon(Icons.account_circle),
              title: Text(
                'Developer',
                style: kLabelTextStyle.copyWith(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
