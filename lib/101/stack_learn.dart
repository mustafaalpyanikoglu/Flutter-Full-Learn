import 'package:flutter/material.dart';

class StackLearnView extends StatelessWidget {
  const StackLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        // son verdiğimiz özellik ilk özelliğin üstüne çıkar
        children: [
          Container(color: Colors.red, height: 100),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(color: Colors.blue, height: 100),
          ),
          const SizedBox(height: 30),
          Positioned.fill(
            top: 100,
            child: Container(color: Colors.black),
          ),
          Positioned(
            right: 0,
            left: 0,
            top: 100,
            height: 25,
            child: Container(color: Colors.green),
          ),
        ],
      ),
    );
  }
}
