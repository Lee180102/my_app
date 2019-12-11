import 'package:flutter/material.dart';
import 'package:my_app/demo/demo_list.dart';
import 'package:my_app/demo/hello_world.dart';

import 'demo/basic_widget.dart';
import 'demo/new_route.dart';
import 'myHomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //Material应用程序以MaterialApp widget开始， 该widget在应用程序的根部创建了一些有用的widget，其中包括一个Navigator， 它管理由字符串标识的Widget栈（即页面路由栈）。Navigator可以让您的应用程序在页面之间的平滑的过渡。
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "new_route": (context) => new NewRoute(),
        "hello_world": (context) => new HelloWorld(),
        "basic_widget": (context) => new BasicWidget(),
        "demo_list": (context) => new DemoList(),
      },
      home: MyHomePage(title: 'Home Page'),
    );
  }
}
