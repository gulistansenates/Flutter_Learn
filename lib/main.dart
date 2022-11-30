import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '101/app_bar_learn.dart';
import '101/color_learn.dart';
import '101/icon_learn.dart';
import '101/stateless_learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: Colors.black,
        elevation: 0,
      )),
      home: const StatelessLearn(),
    );
  }
}
