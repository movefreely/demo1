import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
* 参考：https://flutter.cn/docs/development/ui/animations/tutorial
* */

class AnimationPage extends StatefulWidget {
  const AnimationPage({Key? key}) : super(key: key);

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation'),
      ),
      body: Container(
        child: ListView(
          children: [
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, "/animation/demo1");
              },
              child: Text("animationController"),
              color: Colors.blue[200],
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, "/animation/demo2");
              },
              child: Text("AnimatedWidget"),
              color: Colors.blue[200],
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, "/animation/demo3");
              },
              child: Text("AnimationBuilder"),
              color: Colors.blue[200],
            ),
          ],
        ),
      ),
    );
  }
}
