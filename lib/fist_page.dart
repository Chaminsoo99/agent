import 'package:flutter/material.dart';




class FistPage extends StatefulWidget {
  const FistPage({Key? key}) : super(key: key);

  @override
  State<FistPage> createState() => _FistPageState();
}

class _FistPageState extends State<FistPage> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("첫번째 페이지"),);
  }
}
