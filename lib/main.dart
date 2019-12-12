import 'package:flutter/material.dart';
import 'package:my_app/demo/counter.dart';
import 'package:my_app/demo/counter_copy.dart';
import 'package:my_app/demo/hello_world.dart';
import 'package:my_app/demo/processing_gesture.dart';
import 'package:my_app/state/myIos.dart';
import 'package:my_app/state/store.dart';

import 'demo/basic_widget.dart';
import 'demo/new_route.dart';
import 'demo_list.dart';
import 'myHomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // 变量以下划线（_）开头，在Dart语言中使用下划线前缀标识符，会强制其变成私有的。
    //为了继承主题数据，widget需要位于MaterialApp内才能正常显示， 因此我们使用MaterialApp来运行该应用。
    //Material应用程序以MaterialApp widget开始， 该widget在应用程序的根部创建了一些有用的widget，其中包括一个Navigator， 它管理由字符串标识的Widget栈（即页面路由栈）。Navigator可以让您的应用程序在页面之间的平滑的过渡。
    return Store.init(
        context: context,
        child: MaterialApp(
          title: 'Flutter Demo',
          //使用 ThemeData 来改变UI的其他方面。主题控制您应用程序的外观和风格。您可以使用默认主题，该主题取决于物理设备或模拟器，也可以自定义主题以适应您的品牌。
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          routes: {
            "new_route": (context) => new NewRoute(),
            "hello_world": (context) => new HelloWorld(),
            "basic_widget": (context) => new BasicWidget(),
            "demo_list": (context) => new DemoList(),
            "processing_gesture": (context) => new MyButton(),
            "counter": (context) => new Counter(),
            "counter_copy": (context) => new CounterCopy(),
            "global_state": (context) => new MyIos(),
          },
          home: MyHomePage(title: 'Home Page'),
        ));
  }
}
