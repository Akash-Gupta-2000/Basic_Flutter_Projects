import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('images/MyPhoto.jpeg'),
              ),
              Text(
                'Akash Gupta',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20,
                  color: Colors.white,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.black,
                    ),
                    title: Text(
                      '+918920297217',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.teal[500],
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Souce Sans Pro',
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  child: ListTile(
                    leading: Icon(
                      Icons.mail,
                      color: Colors.black,
                      //Size and Color Properties are there as well
                    ),
                    title: Text(
                      'akash@gmail.com',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.teal[500],
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Souce Sans Pro',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
