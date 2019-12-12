import 'package:flutter/material.dart';
import 'package:my_app/state/state_manage_01/store.dart';


class MyIos extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyIos();
  }
}

class _MyIos extends State<MyIos> {
  @override
  Widget build(BuildContext context) {
    print("ios 更新");

    return Scaffold(
      appBar: AppBar(
        title: Text("Layout"),
      ),
      body: Column(
        children: <Widget>[
          Store.connect<UserInfo>(builder: (ctx, user, child) {
            return Text(user.name);
          }),
          //这个会引起整个页面重新build
          // RaisedButton(
          //   child: Text("修改数据"),
          //   onPressed: () {
          //     Store.value<UserInfo>(context).setName("234");
          //   },
          // ),
          Store.connect<UserInfo>(
              builder: (ctx, user, child) {
                return RaisedButton(
                  child: child,
                  onPressed: () {
                    user.setName("111");
                  },
                );
              },
              child: Text("修改数据"))
        ],
      ),
    );
  }
}
