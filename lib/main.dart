import 'package:agent/MyWebView.dart';
import 'package:agent/mainboard.dart';
import 'package:flutter/material.dart';
import 'home.dart';


void main() {
  runApp(
    MaterialApp(
          home: MyApp(),
        ),

  );
}

//웹뷰로 띄워줄 링크들의 리스트
var linkList = ['https://gall.dcinside.com/board/lists?id=gongik_new', ''];


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('에이전트'),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.teal,),

      body: report()
    );
  }
}


