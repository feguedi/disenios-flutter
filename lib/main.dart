import 'package:flutter/material.dart';

import 'package:disenios/src/views/views.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'scroll',
      routes: {
        'basic': (_) => BasicDesignView(),
        'scroll': (_) => ScrollDesign(),
      },
    );
  }
}
