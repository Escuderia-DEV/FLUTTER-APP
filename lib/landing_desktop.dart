import 'package:flutter/material.dart';

class LandingDesktop extends StatefulWidget {
  const LandingDesktop({super.key});

  @override
  State<LandingDesktop> createState() => _StateLandingDesktop();
}

class _StateLandingDesktop extends State<LandingDesktop> {
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
              'Landing Desktop',
            ),
          ],
        ),
      ),
    );
  }
}
