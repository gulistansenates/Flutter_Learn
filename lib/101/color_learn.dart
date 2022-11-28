import 'package:flutter/material.dart';

class ColorLearnView extends StatelessWidget {
  const ColorLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(color: Colors.deepOrange[300], child: const Text('Data')),
    );
  }
}

class ColorItems {
  final Color porchase = const Color(0xffEDBF61);
  final Color sulu = const Color.fromRGBO(219, 163, 154, 1);
}
