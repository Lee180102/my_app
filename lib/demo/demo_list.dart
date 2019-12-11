import 'package:flutter/material.dart';

class DemoList extends StatefulWidget {
  @override
  _DemoListState createState() => _DemoListState();
}

class _DemoListState extends State<DemoList> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Demo List"),
      ),
      body: new Center(
        child: new ListView(
          padding: const EdgeInsets.all(16.0),
          children: <Widget>[
            FlatButton(
              child: Text("open new route"),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.of(context).pushNamed("new_route");
              },
            ),
            new Divider(),
            FlatButton(
              child: Text("Hello World"),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.of(context).pushNamed("hello_world");
              },
            ),
            new Divider(),
            FlatButton(
              child: Text("基础 Widget"),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.of(context).pushNamed("basic_widget");
              },
            ),
            new Divider(),
          ],
        ),
      ),
    );
  }
}
