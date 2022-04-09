import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  var listWidget = <Widget>[];
  
  var data=[
    {"id":1,"title":"测试数据AAA","subtitle":"ASDFASDFASDF"},
    {"id":2,"title":"测试数据bbb","subtitle":"ASDFASDFASDF"},
    {"id":3,"title":"测试数据ccc","subtitle":"ASDFASDFASDF"},
    {"id":4,"title":"测试数据eee","subtitle":"ASDFASDFASDF"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListPage"),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context,index){
          return ListTile(
            title: Text(data[index]["title"]! as String),
            subtitle: Text(data[index]["subtitle"]! as String),
            onTap: (){
              Navigator.pushNamed(context, "/list/detail",arguments: data[index]["title"]! as String);
            },
          );
        },
      ),
    );
  }
}
