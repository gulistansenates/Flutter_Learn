import 'package:flutter/material.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.purple[200],
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              color: Colors.grey[300],
              height: 100,
            ),
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
}
