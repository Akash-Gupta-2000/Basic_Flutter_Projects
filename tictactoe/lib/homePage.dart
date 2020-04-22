import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> items;
  bool isCross;
  String message = '';

  @override
  void initState() {
    super.initState();
    items = List.generate(9, (index) => "edit");
  }

  Image getImage(i) {
    return Image.asset("images/${items[i]}.png");
  }

  bool checkFor(a, b, c) {
    if (items[a] != 'edit' && items[a] == items[b] && items[b] == items[c])
      return true;
    return false;
  }

  void checkWin() {
    if (checkFor(0, 1, 2))
      message = '${items[0]} wins';
    else if (checkFor(3, 4, 5))
      message = '${items[3]} wins';
    else if (checkFor(6, 7, 8))
      message = '${items[6]} wins';
    else if (checkFor(0, 3, 6))
      message = '${items[0]} wins';
    else if (checkFor(1, 4, 7))
      message = '${items[1]} wins';
    else if (checkFor(2, 5, 8))
      message = '${items[2]} wins';
    else if (checkFor(0, 4, 8))
      message = '${items[0]} wins';
    else if (checkFor(2, 4, 6))
      message = '${items[2]} wins';
    else if (!items.contains('edit')) message = 'Game Draw';
    if (message != '') {
      Alert(
              context: context,
              title: message,
              desc: 'Thank You For Playing the Game')
          .show();
      resetAll();
    }
  }

  void resetAll() {
    setState(() {
      items = List.filled(9, "edit");
      message = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Tic Tac Toe')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: GridView.builder(
                padding: EdgeInsets.all(25),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.0,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0),
                itemCount: items.length,
                itemBuilder: (context, i) => Container(
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20))),
                        child: getImage(i),
                        onPressed: () {
                          setState(() {
                            if (isCross == true) {
                              items[i] = 'cross';
                              isCross = false;
                            } else {
                              items[i] = 'circle';
                              isCross = true;
                            }
                            checkWin();
                          });
                        },
                      ),
                    )),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 60),
            child: RaisedButton(
              elevation: 5,
              color: Colors.cyanAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  'Play Again',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              onPressed: resetAll,
            ),
          ),
        ],
      ),
    );
  }
}
