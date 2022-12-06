import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [CenterCircularProgress()],
      ),
      body: const LinearProgressIndicator(),
    );
  }
}

class CenterCircularProgress extends StatelessWidget {
  const CenterCircularProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: CircularProgressIndicator(
      color: Colors.white,
      strokeWidth: 7,
      value: 0.6,
    ));
  }
}
