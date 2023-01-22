
import 'package:sleducation/pages/homePage.dart';
import 'package:flutter/material.dart';
import 'package:sleducation/homePagebuilder.dart';
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