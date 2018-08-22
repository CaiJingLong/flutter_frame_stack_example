import 'package:flutter/material.dart';
import 'package:frame_stack_demos/frame_stack.dart';
import 'package:frame_stack_demos/main.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var index = 0;
  IndexController controller = IndexController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FrameStack(
        controller: controller,
        children: <Widget>[
          MyHomePage(title: "1号页面"),
          MyHomePage(title: "2号页面"),
          MyHomePage(title: "3号页面"),
          MyHomePage(title: "4号页面"),
          MyHomePage(title: "5号页面"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: Icon(Icons.change_history),
        onPressed: () {
          index = index + 1;
          index = index % 5;
          controller?.changeIndex?.call(index);
        },
        heroTag: "change",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
