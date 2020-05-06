import 'package:bmicalc/constants.dart';
import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'ABOUT THE APP',
          ),
        ),
      ),
      body: Card(
        margin: EdgeInsets.all(20).copyWith(top: 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 5,
        child: Container(
          height: 260,
          padding: EdgeInsets.all(15),
          child: ListView(
            children: <Widget>[
              Text(
                'This app is used to calculate the BMI value and corresponding weight status while taking age into consideration.',
                style: kLabelTextStyle.copyWith(color: Colors.white),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'It is a multi screen app with simple functionality but full-on custom styling.',
                style: kLabelTextStyle.copyWith(color: Colors.white),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Hope you guys will like this app !',
                style: kLabelTextStyle.copyWith(color: Colors.white),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
