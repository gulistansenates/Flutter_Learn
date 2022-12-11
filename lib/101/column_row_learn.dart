import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(child: Container(color: Colors.yellow[100])),
                  Expanded(child: Container(color: Colors.yellow[200])),
                  Expanded(child: Container(color: Colors.yellow[300])),
                  Expanded(child: Container(color: Colors.yellow[400])),
                ],
              )),
          SizedBox(
            height: ProjectContainerSizes.cardHeight,
            child: Column(
              children: const [
                SizedBox(width: 50, child: Text('Data')),
                SizedBox(width: 50, child: Text('Data')),
                SizedBox(width: 50, child: Text('Data')),
                SizedBox(width: 50, child: Text('Data')),
              ],
            ),
          ),
          Expanded(flex: 4, child: Container(color: Colors.purple[200])),
          Expanded(flex: 2, child: Container(color: Colors.yellow[200])),
          Expanded(flex: 2, child: Container(color: Colors.pink[200])),
          Expanded(flex: 2, child: Container(color: Colors.blue[100])),
        ],
      ),
    );
  }
}

class ProjectContainerSizes {
  static const double cardHeight = 200;
}
