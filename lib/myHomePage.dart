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
    //Scaffold是Material中主要的布局组件.
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: _pushDemoList,
        ),
        title: Text(widget.title),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
      body: new Center(
        child: new Text(
          "Home",
          style: TextStyle(fontSize: 30.0),
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        tooltip: 'Add', // used by assistive technologies
        child: new Icon(Icons.add),
        onPressed: null,
      ),
    );
  }

  _pushDemoList() {
    Navigator.of(context).pushNamed("demo_list");
  }
}
