import 'package:flutter/material.dart';
import 'b.dart' as b;

// https://github.com/chihyeonWON/Loving_Day

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    )
  );
}

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

      body: Text('남은복무일'),
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
              onTap: (){
                //사이트이동
              },
            ),
            ListTile(
              leading: Icon(Icons.add_business_rounded, color: Colors.grey),
              title: Text('공익갤러리'),
              onTap: (){
                //사이트이동
              },
            ),
            ListTile(
              leading: Icon(Icons.add_business_rounded, color: Colors.grey),
              title: Text('신문고'),
              onTap: (){
                //사이트이동
              },
            ),
            ListTile(
              leading: Icon(Icons.add_business_rounded, color: Colors.grey),
              title: Text('월급계산기'),
              onTap: (){
                //사이트이동
              },
            ),
            ListTile(
              leading: Icon(Icons.add_business_rounded, color: Colors.grey),
              title: Text('사회복무규정'),
              onTap: (){
                //사이트이동
              },
            ),
          ],

        ),
      ),

    );
  }
}


