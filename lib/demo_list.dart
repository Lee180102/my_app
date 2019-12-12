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
            FlatButton(
              child: Text("处理手势"),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.of(context).pushNamed("processing_gesture");
              },
            ),
            new Divider(),
            FlatButton(
              child: Text("根据用户输入改变widget"),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.of(context).pushNamed("counter");
              },
            ),
            new Divider(),
            FlatButton(
              child: Text("根据用户输入改变widget,事件流是“向上”传递的，而状态流是“向下”传递的"),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.of(context).pushNamed("counter_copy");
              },
            ),
            new Divider(),
             FlatButton(
              child: Text("全局状态管理"),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.of(context).pushNamed("global_state");
              },
            ),
            new Divider(),
          ],
        ),
      ),
    );
  }
}
