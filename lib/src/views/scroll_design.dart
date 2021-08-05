import 'package:flutter/material.dart';

class ScrollDesign extends StatelessWidget {
  const ScrollDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 60,
      color: Colors.white70,
    );
    return Scaffold(
      body: Stack(
        children: [
          _background(),
          SafeArea(
            bottom: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 40),
                Text('11º', style: textStyle),
                Text('Miércoles', style: textStyle),
                Expanded(child: Container()),
                Icon(Icons.keyboard_arrow_down,
                    size: 100, color: Colors.white70),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _background() => Container(
        color: Color(0xff30bad6),
        child: Image(
          image: AssetImage('assets/scroll-1.png'),
          fit: BoxFit.cover,
        ),
      );
}
