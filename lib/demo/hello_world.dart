import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Hello World"),
      ),
      body: Container(
        child: Center(
            child: new Text(
          "Hello World",
          textDirection: TextDirection.ltr,
        )),
      ),
    );
  }
}
