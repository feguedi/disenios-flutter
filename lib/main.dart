import 'package:disenios/src/views/basic_design.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'basic',
      routes: {
        'basic': (_) => BasicDesignView(),
      },
    );
  }
}
