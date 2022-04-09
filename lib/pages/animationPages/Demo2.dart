import 'package:flutter/material.dart';

class Demo2 extends StatefulWidget {
  const Demo2({Key? key}) : super(key: key);

  @override
  State<Demo2> createState() => _Demo2State();
}

class _Demo2State extends State<Demo2> with SingleTickerProviderStateMixin {

  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );
    var curve = CurvedAnimation(
      parent: controller,
      curve: Curves.easeInOut,
    );
    animation = Tween<double>(begin: 0, end: 300).animate(curve)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller.forward();
        }
      });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo2'),
      ),
      body: AnimationWidgetDemo(animation: animation),
    );
  }
}

class AnimationWidgetDemo extends AnimatedWidget {
  const AnimationWidgetDemo({Key? key, required Animation<double> animation})
      : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {

    final Animation<double> animation = listenable as Animation<double>;

    return Center(
      child: Container(
        height: animation.value,
        width: animation.value,
        color: Colors.red,
      ),
    );
  }
}
