import 'package:flutter/material.dart';

class Demo3 extends StatefulWidget {
  const Demo3({Key? key}) : super(key: key);

  @override
  State<Demo3> createState() => _Demo3State();
}

class _Demo3State extends State<Demo3> with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  static final _opacityTween = Tween<double>(begin: 0, end: 1);
  static final _sizeTween = Tween<double>(begin: 0, end: 300);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );
    animation = CurvedAnimation(
      parent: controller,
      curve: Curves.easeInOut,
    );
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo3'),
      ),
      body: Center(
        child: Container(
          child: AnimatedBuilder(
            animation: animation,
            builder: (context, child) {
              return Opacity(
                opacity: _opacityTween.evaluate(animation),
                child: Container(
                  width: _sizeTween.evaluate(animation),
                  height: _sizeTween.evaluate(animation),
                  child: child,
                ),
              );
            },
            child: Container(
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}

