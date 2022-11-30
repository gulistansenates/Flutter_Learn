import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                color: Colors.white,
                height: 100,
                width: 200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Container(
                color: Colors.white,
                height: 100,
                width: 200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                color: Colors.red,
                height: 100,
                width: 200,
              ),
            )
          ],
        ));
  }
}
