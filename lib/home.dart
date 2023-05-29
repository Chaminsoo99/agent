import 'package:agent/fist_page.dart';
import 'package:agent/mainboard.dart';
import 'package:agent/second_page.dart';
import 'package:agent/third_page.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'package:agent/MyWebView.dart';



class report extends StatefulWidget {
  const report({Key? key}) : super(key: key);
  @override
  State<report> createState() => _reportState();
}

class _reportState extends State<report> {

  int current_pages = 0;
  final screens = [mainboard(),FistPage(), SecondPage(), ThirdPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[current_pages],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,	// item이 4개 이상일 경우 추가
        selectedItemColor: Colors.grey,
        currentIndex: current_pages,
        onTap: (index){
          setState(() {
            current_pages = index;
          },
          );
        },
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home),label: '홈'),
          const BottomNavigationBarItem(icon: Icon(Icons.home),label: '복무지'),
          const BottomNavigationBarItem(icon: Icon(Icons.home),label: '군적금'),
          const BottomNavigationBarItem(icon: Icon(Icons.home),label: '훈련소'),
        ],
      ),
    );
  }
}
