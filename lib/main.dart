import 'package:flutter/material.dart';
import './menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 140, 0),
          title: Text("เมนู ร้านอีสานไทบ้าน"),
        ),
        body: Menu(),
      ),
    );
  }
}
