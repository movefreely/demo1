import 'package:demo1/pages/AnimationPage.dart';
import 'package:demo1/pages/DetailPage.dart';
import 'package:demo1/pages/ImagePage.dart';
import 'package:demo1/pages/List.dart';
import 'package:demo1/pages/PositionPage.dart';
import 'package:demo1/pages/animationPages/Demo1.dart';
import 'package:demo1/pages/animationPages/Demo2.dart';
import 'package:demo1/pages/animationPages/Demo3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

var routes = {
  "/list": (context) => ListPage(),
  "/list/detail": (context) => DetailPage(),
  "/img": (context) => ImagePage(),
  "/position": (context) => PositionPage(),
  "/animation": (context) => AnimationPage(),
  "/animation/demo1": (context) => Demo1(),
  "/animation/demo2": (context) => Demo2(),
  "/animation/demo3": (context) => Demo3(),
};

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: routes,
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _text = 'Hello World';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("${_text}", style: TextStyle(
              color: Color(0xff000000),
              fontSize: 30,
            ),),
            MaterialButton(
              onPressed: () {
                setState(() {
                  _text = 'Hello ZWX!!!!!';
                });
              },
              color: Colors.blue[200],
              child: Text('点击改变文字'),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, "/list");
              },
              color: Colors.blue[200],
              child: Text("点击进人列表页面"),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, "/img");
              },
              color: Colors.blue[200],
              child: Text("点击进图片页面"),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, "/position");
              },
              color: Colors.blue[200],
              child: Text("点击进入定位页面"),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, "/animation");
              },
              color: Colors.blue[200],
              child: Text("点击进入动画页面"),
            )
          ],
        ),
      ),
    );
  }
}
