import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp1());
}

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new HomePage1(),
    );
  }
}

class HomePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.developer_board),
        onPressed: () {
          Navigator.of(context).push(
            new MaterialPageRoute(builder: (_) => new MySecondPage()),
          );
        },
      ),
    );
  }
}

class MySecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Developer Mode'),
      ),
      body: new MySecondPageBody(),
    );
  }
}

class MySecondPageBody extends StatefulWidget {
  @override
  State createState() => new MySecondPageBodyState();
}

class MySecondPageBodyState extends State<MySecondPageBody> {
  @override
  void initState() {
    new Future<Null>.delayed(Duration.zero, () {
      Scaffold.of(context).showSnackBar(
        new SnackBar(content: new Text("You made it! Congrats.")),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Text('You are now a developer.'),
    );
  }
}