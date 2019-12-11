import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.list),
              onPressed: _pushDemoList,
            )
          ],
        ),
        body: new Center(child: new Text("Home",style: TextStyle(fontSize: 30.0),),));
  }

  _pushDemoList() {
    Navigator.of(context).pushNamed("demo_list");
  }
}
