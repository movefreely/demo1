import 'package:flutter/material.dart';

/*
* 参考：https://flutter.cn/docs/development/ui/animations/tutorial
* */

class Demo1 extends StatefulWidget {
  const Demo1({Key? key}) : super(key: key);

  @override
  State<Demo1> createState() => _Demo1State();
}

class _Demo1State extends State<Demo1>
    with SingleTickerProviderStateMixin {

  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    // 定义动画进程为非线性曲线。
    var curve = CurvedAnimation(parent: controller, curve: Curves.easeIn);
    // 使用 Tween 配置动画来插入不同的范围或数据类型
    animation = Tween<double>(begin: 0, end: 300).animate(curve)
      ..addListener(() {
        setState(() {
          // the state that has changed here is the animation object’s value
        });
      });

    // 启动动画
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation'),
      ),
      body: Container(
        child: Container(
          width: animation.value,
          height: animation.value,
          color: Colors.red,
        )
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }
}
