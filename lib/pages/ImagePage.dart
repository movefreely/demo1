import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Image.network("https://i1.hdslb.com/bfs/archive/3d9fc0e61e140ae5b56f5abbf28716ce0f57d9af.jpg@672w_378h_1c.webp"),
            SizedBox(height: 20),
            Image.asset("assets/images/demo.webp"),
          ],
        ),
      ),
    );
  }
}
