import 'package:bmicalc/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Developer extends StatefulWidget {
  @override
  _DeveloperState createState() => _DeveloperState();
}

class _DeveloperState extends State<Developer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('DEVELOPER')),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          CircleAvatar(
            radius: 90,
            backgroundImage: AssetImage('images/MyPhoto.jpeg'),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            margin: EdgeInsets.all(20),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Text(
                    'Hi! I am Akash Gupta, the Sole Developer of this App and create this App to practise my App Development Skills.',
                    style: kLabelTextStyle.copyWith(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Divider(
                      color: Colors.white,
                      thickness: 2,
                    ),
                  ),
                  Text(
                    'Hope You Guys will like the App!',
                    style: kLabelTextStyle.copyWith(color: Colors.white),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
