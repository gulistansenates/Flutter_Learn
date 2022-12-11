import 'package:flutter/material.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          containerProperty(Colors.purple),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: containerProperty(Colors.grey),
          ),
          Positioned(
            bottom: 0,
            width: 25,
            height: 100,
            child: Container(color: Colors.yellow[200]),
          ),
        ],
      ),
    );
  }

  Container containerProperty(Color color) {
    return Container(
      height: 100,
      color: color,
    );
  }
}
