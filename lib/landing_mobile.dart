import 'package:flutter/material.dart';

class LandingMobile extends StatefulWidget {
  const LandingMobile({super.key});

  @override
  State<LandingMobile> createState() => _StateLandingMobile();
}

class _StateLandingMobile extends State<LandingMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Landing Desktop'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Landing Mobile',
            ),
          ],
        ),
      ),
    );
  }
}
