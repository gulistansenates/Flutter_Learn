import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.green;
                }
                return Colors.yellow;
              })),
              onPressed: () {},
              child: Text('SAVE', style: Theme.of(context).textTheme.subtitle1),
            ),
            ElevatedButton(onPressed: () {}, child: const Text('Data')),
            IconButton(onPressed: () {}, icon: const Icon(Icons.abc_rounded)),
            FloatingActionButton(
                onPressed: () {}, child: const Icon(Icons.add)),
            OutlinedButton(
                style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.red, shape: const CircleBorder()),
                onPressed: () {},
                child: const Text('Data')),
            InkWell(onTap: () {}, child: const Text('Custom')),
            Container(height: 100, color: Colors.white),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
              onPressed: () {},
              child: Padding(
                  padding: const EdgeInsets.only(
                      top: 20, bottom: 20, right: 40, left: 40),
                  child: Text('Place Bid',
                      style: Theme.of(context).textTheme.headline4)),
            )
          ],
        ));
  }
}
