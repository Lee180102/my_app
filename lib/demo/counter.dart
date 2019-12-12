import 'package:flutter/material.dart';

//根据用户输入改变widget
//无状态widget从它们的父widget接收参数， 它们被存储在final型的成员变量中。 当一个widget被要求构建时，它使用这些存储的值作为参数来构建widget。
class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}
//为什么StatefulWidget和State是单独的对象

//在Flutter中，这两种类型的对象具有不同的生命周期：
// Widget是临时对象，用于构建当前状态下的应用程序，
//而State对象在多次调用build()之间保持不变，允许它们记住信息(状态)。
//在Flutter中，事件流是“向上”传递的，而状态流是“向下”传递的
class _CounterState extends State<Counter> {
  int _courter = 0;

  void _increment() {
    setState(() {
      _courter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("counter"),
      ),
      body: new Container(
        child: new Row(
          children: <Widget>[
            new RaisedButton(
              onPressed: _increment,
              child: new Text("Increment"),
            ),
            new Text("Count: $_courter")
          ],
        ),
      ),
    );
  }
}
