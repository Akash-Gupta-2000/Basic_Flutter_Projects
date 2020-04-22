import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> items;
  int luckyNumber;
  int countUnluckyAttempts = 0;

  @override
  void initState() {
    super.initState();
    items = List.generate(25, (index) => "empty");
    luckyNumber = Random().nextInt(25);
  }

  Image getImage(index) {
    if (items[index] == 'lucky')
      return Image.asset("images/rupee.png");
    else if (items[index] == "unlucky")
      return Image.asset("images/sadFace.png");
    return Image.asset("images/circle.png");
  }

  void resetAll() {
    setState(() {
      items = List.filled(25, "empty");
      luckyNumber = Random().nextInt(25);
      countUnluckyAttempts = 0;
    });
  }

  void checkUnlucky(int count) {
    if (count == 5) {
      Alert(
              context: context,
              title: "You Lose!",
              desc: "Better Luck Next Time!")
          .show();
      resetAll();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scratch and Win'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: GridView.builder(
                padding: EdgeInsets.all(20),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                    childAspectRatio: 1.0,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 10.0),
                itemCount: items.length,
                itemBuilder: (context, i) => Container(
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomRight: Radius.circular(7))),
                        onPressed: () {
                          setState(() {
                            if (luckyNumber == i) {
                              items[i] = "lucky";
                              Alert(
                                      context: context,
                                      title: "You Win!",
                                      desc: "You are a Champ!")
                                  .show();
                            } else {
                              items[i] = "unlucky";
                              countUnluckyAttempts += 1;
                              checkUnlucky(countUnluckyAttempts);
                            }
                          });
                        },
                        child: getImage(i),
                      ),
                    )),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(17, 17, 17, 40),
            child: RaisedButton(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              color: Colors.pink,
              padding: EdgeInsets.all(17),
              onPressed: resetAll,
              child: Text(
                'Play Again',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Container(
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Learn Code Online',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            margin: EdgeInsets.only(top: 5),
            height: 70,
            width: double.infinity,
            color: Colors.purple,
          ),
        ],
      ),
    );
  }
}
