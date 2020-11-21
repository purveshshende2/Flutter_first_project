import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My App",
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _MyAppHomePage createState() => _MyAppHomePage();
}

class _MyAppHomePage extends State<HomePage> {
  String mytext = "Hello All";

  void _changeText() {
    setState(() {
      if (mytext.startsWith("H")) {
        mytext = "Welcome bro ";
      } else {
        mytext = "Hello All";
      }
    });
  }

  Widget _bodyWidget() {
    return new Container(
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              mytext,
              style: new TextStyle(fontSize: 22.2),
            ),
            new RaisedButton(
              child: new Text(
                "Click",
                style: new TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: _changeText,
              color: Colors.yellow,
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Home Page"),
        ),
        body: _bodyWidget());
  }
}
