import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:disenios/src/views/views.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData.dark(),
      initialRoute: 'home',
      routes: {
        'basic': (_) => BasicDesignView(),
        'scroll': (_) => ScrollDesign(),
        'home': (_) => HomeDesign(),
      },
    );
  }
}
