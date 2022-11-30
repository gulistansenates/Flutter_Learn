// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          // ignore: prefer_const_constructors
          Card(
            margin: ProjectMargins.cardMargin,
            color: Colors.black,
            child: const SizedBox(
                height: 100, width: 100, child: Center(child: Text('Bella'))),
          ),
          Card(
            color: Theme.of(context).colorScheme.error,
            shape: const StadiumBorder(),
            child: const SizedBox(height: 100, width: 300),
          ),
          // ignore: prefer_const_constructors
          _CustomCard(
            child: const SizedBox(
                height: 100, width: 200, child: Center(child: Text('Bella'))),
          )
        ],
      ),
    );
  }
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(10);
}

// ignore: unused_element
class _CustomCard extends StatelessWidget {
  const _CustomCard({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: ProjectMargins.cardMargin,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: child,
    );
  }
}
