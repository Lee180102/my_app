import 'package:flutter/material.dart';

//在Flutter中，事件流是“向上”传递的，而状态流是“向下”传递的
//我们是如何创建了两个新的无状态widget的！
//我们清晰地分离了 显示 计数器（CounterDisplay）和 更改 计数器（CounterIncrementor）的逻辑。
// 尽管最终效果与前一个示例Counter相同，但责任分离允许将复杂性逻辑封装在各个widget中，同时保持父项的简单性。
class CounterDisplay extends StatelessWidget {
  CounterDisplay({this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return new Text('Count: $count');
  }
}

class CounterIncrementor extends StatelessWidget {
  //事件向上传递
  CounterIncrementor({this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: onPressed,
      child: new Text('Increment'),
    );
  }
}

class CounterCopy extends StatefulWidget {
  @override
  _CounterCopyState createState() => new _CounterCopyState();
}

class _CounterCopyState extends State<CounterCopy> {
  int _counter = 0;

  void _increment() {
    setState(() {
      ++_counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("counter"),
      ),
      body: new Container(
          child: new Row(children: <Widget>[
        new CounterIncrementor(onPressed: _increment),
        //state向下传递
        new CounterDisplay(count: _counter),
      ])),
    );
  }
}
