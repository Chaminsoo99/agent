import 'package:flutter/material.dart';
import 'package:agent/MyWebView.dart';
import 'home.dart';
import 'main.dart';


class mainboard extends StatefulWidget {
  const mainboard({Key? key}) : super(key: key);
  @override
  State<mainboard> createState() => _mainboardState();
}

class _mainboardState extends State<mainboard> {
  @override
  Widget build(BuildContext context) {
    return Column(
     //mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Flexible(child: Container(
          decoration: BoxDecoration(
            color: Colors.tealAccent,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child: (Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: (){//사이트이동
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>
                                MyWebView(link: linkList[0],
                                    appbartext: '뒤로가기')));
                      },
                      child: Text("공익 갤러리"),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)), //모서리 둥글게
                        primary: Colors.white,  //버튼색
                        onPrimary: Colors.black, //글자색
                        elevation: 5, shadowColor: Colors.black,
                        fixedSize: Size(70,50),   //width, height
                        textStyle: const TextStyle(fontSize: 13),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: (){//사이트이동
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>
                                MyWebView(link: linkList[1],
                                    appbartext: '뒤로가기')));},
                      child: Text("복무 규정"),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)), //모서리 둥글게
                        primary: Colors.white,  //버튼색
                        onPrimary: Colors.black, //글자색
                        elevation: 5, shadowColor: Colors.black,
                        fixedSize: Size(70,50),   //width, height
                        textStyle: const TextStyle(fontSize: 13),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: (){//사이트이동
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>
                                MyWebView(link: linkList[1],
                                    appbartext: '뒤로가기')));},
                      child: Text("사회복무신청"),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)), //모서리 둥글게
                        primary: Colors.white,  //버튼색
                        onPrimary: Colors.black, //글자색
                        elevation: 5, shadowColor: Colors.black,
                        fixedSize: Size(70,50),   //width, height
                        textStyle: const TextStyle(fontSize: 13),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: (){//사이트이동
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>
                                MyWebView(link: linkList[1],
                                    appbartext: '뒤로가기')));},
                      child: Text("재지정"),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)), //모서리 둥글게
                        primary: Colors.white,  //버튼색
                        onPrimary: Colors.black, //글자색
                        elevation: 5, shadowColor: Colors.black,
                        fixedSize: Size(70,50),   //width, height
                        textStyle: const TextStyle(fontSize: 13),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: (){//사이트이동
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>
                                MyWebView(link: linkList[1],
                                    appbartext: '뒤로가기')));},
                      child: Text("월급"),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)), //모서리 둥글게
                        primary: Colors.white,  //버튼색
                        onPrimary: Colors.black, //글자색
                        elevation: 5, shadowColor: Colors.black,
                        fixedSize: Size(70,50),   //width, height
                        textStyle: const TextStyle(fontSize: 13),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: (){//사이트이동
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>
                                MyWebView(link: linkList[1],
                                    appbartext: '뒤로가기')));},
                      child: Text("버튼"),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)), //모서리 둥글게
                        primary: Colors.white,  //버튼색
                        onPrimary: Colors.black, //글자색
                        elevation: 5, shadowColor: Colors.black,
                        fixedSize: Size(70,50),   //width, height
                        textStyle: const TextStyle(fontSize: 13),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: (){//사이트이동
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>
                                MyWebView(link: linkList[1],
                                    appbartext: '뒤로가기')));},
                      child: Text("버튼"),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)), //모서리 둥글게
                        primary: Colors.white,  //버튼색
                        onPrimary: Colors.black, //글자색
                        elevation: 5, shadowColor: Colors.black,
                        fixedSize: Size(70,50),   //width, height
                        textStyle: const TextStyle(fontSize: 13),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: (){//사이트이동
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>
                                MyWebView(link: linkList[1],
                                    appbartext: '뒤로가기')));},
                      child: Text("버튼"),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)), //모서리 둥글게
                        primary: Colors.white,  //버튼색
                        onPrimary: Colors.black, //글자색
                        elevation: 5, shadowColor: Colors.black,
                        fixedSize: Size(70,50),   //width, height
                        textStyle: const TextStyle(fontSize: 13),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: (){//사이트이동
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>
                                MyWebView(link: linkList[1],
                                    appbartext: '뒤로가기')));},
                      child: Text("버튼"),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)), //모서리 둥글게
                        primary: Colors.white,  //버튼색
                        onPrimary: Colors.black, //글자색
                        elevation: 5, shadowColor: Colors.black,
                        fixedSize: Size(70,50),   //width, height
                        textStyle: const TextStyle(fontSize: 13),
                      ),
                    ),
                  ],
                )
              ]
          )
          ),
        ),flex: 2),
        //두번쨰 박스
        Flexible(child: Container(
          child: Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red,  //버튼색
                onPrimary: Colors.white, //글자색
                //elevation: 5, shadowColor: Colors.black,
                fixedSize: Size(150,40),   //width, height
                textStyle: const TextStyle(fontSize: 16),
              ),
              onPressed: (){},
              child: Text("근무지 민원 넣기"),
            ),
          ),
        ),flex: 1,)
      ],
    );
  }
}
