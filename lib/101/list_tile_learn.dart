import 'package:flutter/material.dart';
import 'package:flutter_learn/core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});
  final imageUrl = 'https://picsum.photos/300/300';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: const Text('My Card'),
                    onTap: () {},
                    subtitle: const Text('How do you use your card?'),
                    leading: const Icon(Icons.money),
                    trailing: const Icon(Icons.chevron_right),
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: const RandomImage(),
                    onTap: () {},
                    subtitle: const Text('How do you use your card?'),
                    leading: const Icon(Icons.money),
                    trailing: const SizedBox(
                        width: 20, child: Icon(Icons.chevron_right)),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
