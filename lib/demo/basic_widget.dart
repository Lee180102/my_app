import 'package:flutter/material.dart';

class BasicWidget extends StatefulWidget {
  @override
  _BasicWidgetState createState() => _BasicWidgetState();
}

class _BasicWidgetState extends State<BasicWidget> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("基础 Widget"),
      ),
      body: new Column(
        children: <Widget>[
          new MyAppBar(
            title: new Text(
              'Example title',
              style: Theme.of(context).primaryTextTheme.title,
            ),
          ),
          //填充尚未被其他子项占用的的剩余可用空间,Expanded可以拥有多个， 然后使用flex参数来确定他们占用剩余空间的比例。
          new Expanded(
            child: new Center(
              child: new Text('Hello, world!'),
            ),
          ),
        ],
      ),
    );
  }
}

//放置了一个MyAppBar实例，将一个Text widget作为其标题传递给应用程序栏。将widget作为参数传递给其他widget是一种强大的技术，可以让您创建各种复杂的widget。
class MyAppBar extends StatelessWidget {
  MyAppBar({this.title});
  final Widget title;
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 56.0, // 单位是逻辑上的像素（并非真实的像素，类似于浏览器中的像素）
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: new BoxDecoration(color: Colors.blue[500]),
      // Row 是水平方向的线性布局（linear layout）
      child: new Row(
        //列表项的类型是 <Widget>
        children: <Widget>[
          new IconButton(
            icon: new Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null, // null 会禁用 button
          ),
          // Expanded expands its child to fill the available space.
          new Expanded(
            child: title,
          ),
          new IconButton(
            icon: new Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
    );
  }
}
