import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';

class HomeScreen extends StatefulWidget{
  //pageController 생성
  final PageController pageController = PageController();
  const HomeScreen({Key? key}) : super(key:key);
  
  @override
  State<HomeScreen> createState() => _HomeScreenState();
  
}

class _HomeScreenState extends State<HomeScreen> {
  //initState() 함수 등록
  @override
  void initState() {
    super.initState();  //부모 initSTate() 실행
  
  Timer.periodic(
    Duration(seconds: 3),
    (timer) {
      print('실행!');
    },
  );
}

  @override
  Widget build(BuildContext context) {
    //상태바 색상 변경
    //생태바가 이미 흰색이면 light 대신 dark를 주어 검정으로 바꾸세요.
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return Scaffold(
      body: PageView( //PageView 추가
        //map() 함수는 1.4.1 map()을 참조해주세요.
      children: [1,2,3,4,5] //샘플 리스트 생성
      .map( //위젯으로 매핑
      (number) => Image.asset(
        'asset/img/image_$number.jpeg',
        fit:BoxFit.cover,
        ), // BoxFit.cover 설정
      )
      .toList(),
      ),
    );
  }
}