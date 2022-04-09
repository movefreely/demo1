import 'package:flutter/material.dart';

class PositionPage extends StatefulWidget {
  const PositionPage({Key? key}) : super(key: key);

  @override
  State<PositionPage> createState() => _PositionPageState();
}

class _PositionPageState extends State<PositionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Position'),
      ),
      body: Stack(
        children: [
          Positioned(
            child: Container(
              color: Colors.red,
              width: 100,
              height: 100,
            ),
            left: 100,
            bottom: 100,
          ),
          Positioned(
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
                color: Colors.green,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            right: 100,
            top: 100,
          ),
        ],
      ),
    );
  }
}
