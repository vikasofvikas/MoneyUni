
import 'package:sleducation/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:sleducation/HomePagebuilder.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ChatGPT TTS",
      home: HomePagebuilder(),
    );
  }
}