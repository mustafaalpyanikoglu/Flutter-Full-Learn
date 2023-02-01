import 'package:flutter/material.dart';
import 'package:flutter_full_learn/core/random_image.dart';

class StackDemoView extends StatelessWidget with _PostiniedProperties {
  StackDemoView({super.key, this.cardHight = 50.0});
  final double cardHight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned.fill(
                      bottom: cardHight / 2, child: const RandomImage()),
                  Positioned(
                      height: _height,
                      bottom: _bottom,
                      width: _width,
                      child: _cardCustom())
                ],
              )),
          const Spacer(flex: 6)
        ],
      ),
    );
  }

  Card _cardCustom() {
    return const Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(),
    );
  }
}

class _PostiniedProperties {
  final double _height = 50.0;
  final double _bottom = 0.0;
  final double _width = 200.0;
}
