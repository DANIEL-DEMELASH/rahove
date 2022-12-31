import 'package:flutter/material.dart';

import 'package:flutter_application_1/constants.dart';

import 'widgets/custom_bottom_nav.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CustomBottomNav(),
  ));
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text(
        'Rahove',
        style: bigTextStyle,
      )),
    );
  }
}
