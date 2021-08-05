import 'package:flutter/material.dart';

class ScrollDesign extends StatelessWidget {
  final textStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 60,
    color: Colors.white70,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        // physics: BouncingScrollPhysics(), // iOS scroll
        physics: ClampingScrollPhysics(), // Android scroll
        scrollDirection: Axis.vertical,
        children: [
          _scrollPage1(),
          _scrollPage2(),
        ],
      ),
    );
  }

  Stack _scrollPage1() {
    return Stack(
      children: [
        _background(),
        _mainContent(),
      ],
    );
  }

  Container _background() {
    return Container(
      color: Color(0xff30bad6),
      child: Image(
        image: AssetImage('assets/scroll-1.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  SafeArea _mainContent() {
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 40),
          Text('11º', style: textStyle),
          Text('Miércoles', style: textStyle),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.white70),
        ],
      ),
    );
  }

  Container _scrollPage2() {
    return Container(
      color: Color(0xff30bad6),
      child: Center(
        child: TextButton(
          onPressed: () {},
          child: Text(
            'Bienvenido',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          style: TextButton.styleFrom(
              backgroundColor: Color(0xff0098FA),
              shape: StadiumBorder(),
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10)),
        ),
      ),
    );
  }
}
