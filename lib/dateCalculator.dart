import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart'; //쿠퍼티노 위젯 사용
import 'main.dart';

class DateCalculator extends StatefulWidget {
  const DateCalculator({Key? key}) : super(key: key);

  @override
  State<DateCalculator> createState() => _DateCalculatorState();
}

class _DateCalculatorState extends State<DateCalculator> {
  DateTime firstDay = DateTime.now();

  void onHeartPressed() {
    showCupertinoDialog( // 쿠퍼티노 다이얼로그 실행
      context: context,
      builder: (BuildContext context) {
        // 날짜 선택하는 다이얼로그
        return Align(
          alignment:Alignment.bottomCenter, // 아래 중간으로 정렬
          child: Container(
            color:Colors.white, // 배경색 흰색 지정
            height:300, // 높이 300 지정
            child: CupertinoDatePicker(
              // 시간 제외하고 날짜만 선택하기
              mode: CupertinoDatePickerMode.date,
              // 날짜가 변경되면 실행되는 함수
              onDateTimeChanged: (DateTime date) {
                setState(() {
                  firstDay = date;
                });
              },
            ),
          ),
        );
      },
      barrierDismissible: true, // 외부 탭할 경우 다이얼로그 닫기
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white, // 배경색 적용
        body: SafeArea( // 시스템 UI 피해서 UI 그리기
            top: true,
            bottom:false,
            child:Column(
              // 위아래 끝에 위젯 배치
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // 반대축 최대 크기로 늘리기
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children:[
                  _DDay(
                    // +아이콘 눌렀을 때 실행할 함수 전달하기
                    onHeartPressed: onHeartPressed,
                    firstDay: firstDay,
                  ),
                  _AgentImage(),
                ]
            )
        )
    );
  }
}

class  _DDay extends StatelessWidget {

  _DDay({Key? key,required this.onHeartPressed, required this.firstDay}) : super(key: key);
  final GestureTapCallback onHeartPressed;
  final DateTime firstDay;

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now(); // 현재 날짜

    return Column(
      children:[
        const SizedBox(
          height:16.0,
        ),
        const SizedBox(
          height:16.0,
        ),
        Text(
          '복무 시작 날짜',
        ),
        Text( // 임시로 지정한 복무 시작 날짜
          '${firstDay.year}.${firstDay.month}.${firstDay.day}',
        ),
        const SizedBox(
          height: 16.0,
        ),
        IconButton(
          iconSize:60.0,
          onPressed:onHeartPressed,
          icon:Icon(
            Icons.add_box,
            color:Colors.red,
          ),
        ),
        const SizedBox(
          height:16.0,
        ),
        Text( // 복무 시작 후 DDay
          // DDay 계산하기
          'D+${DateTime(now.year, now.month, now.day).difference(firstDay).inDays + 1}',
        ),
      ],
    );
  }
}

class _AgentImage extends StatelessWidget {
  const _AgentImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
          child:
          Image.asset(
            'assets/agent.png',

            // 화면의 반만큼 높이 구현
            height: MediaQuery.of(context).size.height/2,
          )
      ),
    );
  }
}