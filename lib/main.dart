import 'package:agent/MyWebView.dart';
import 'package:flutter/material.dart';
import 'b.dart' as b;
import 'dateCalculator.dart';


void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    )
  );
}

//웹뷰로 띄워줄 링크들의 리스트
var linkList = ['https://sbm.mma.go.kr/caisSHBS/', 'https://gall.dcinside.com/board/lists?id=gongik_new', ''];


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('에이전트'),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.amber[700],),

      body: DateCalculator(), //남은 복무일 계산해주는 커스텀위젯

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.amber[700]),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/agent.png'),
              ),
              accountName: Text('<사회복무요원>'),
              accountEmail: Text('메뉴'),
            ),
            ListTile(
              leading: Icon(Icons.add_business_rounded, color: Colors.grey),
              title: Text('사회복무포털'),
              onTap: () {
                //사이트이동
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>
                        MyWebView(link: linkList[0],
                            appbartext: '뒤로가기'))
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.add_business_rounded, color: Colors.grey),
              title: Text('공익갤러리'),
              onTap: () {
                //사이트이동
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>
                        MyWebView(link: linkList[1],
                            appbartext: '뒤로가기'))
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.add_business_rounded, color: Colors.grey),
              title: Text('신문고'),
              onTap: () {
                //사이트이동
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>
                        MyWebView(link: linkList[2],
                            appbartext: '뒤로가기'))
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.add_business_rounded, color: Colors.grey),
              title: Text('000'),
              onTap: () {
                //사이트이동
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>
                        MyWebView(link: linkList[3],
                            appbartext: '뒤로가기'))
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.add_business_rounded, color: Colors.grey),
              title: Text('사회복무규정'),
              onTap: () {
                //사이트이동
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>
                        MyWebView(link: linkList[4],
                            appbartext: '뒤로가기'))
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}


