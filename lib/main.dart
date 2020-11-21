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
          children: <Widget>[
            new Text(mytext),
            new RaisedButton(
              child: new Text("Click"),
              onPressed: _changeText,
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
