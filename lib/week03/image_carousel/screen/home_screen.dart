import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView( //PageView 추가
        //map() 함수는 1.4.1 map()을 참조해주세요.
      children: [1,2,3,4,5] //샘플 리스트 생성
      .map( //위젯으로 매핑
      (number) => Image.asset('asset/img/image_$number.jpeg'),
      
      )
      .toList(),
      ),
    );
  }
}