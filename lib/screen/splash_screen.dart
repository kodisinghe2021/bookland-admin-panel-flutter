import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({required this.rowcChild, Key? key}) : super(key: key);
  final Widget rowcChild;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Loading...",
            style: TextStyle(fontSize: 50),
          ),
          const SizedBox(width: 20),
          rowcChild,
        ],
      )),
    );
  }
}
