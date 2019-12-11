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
