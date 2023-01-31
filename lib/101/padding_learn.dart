import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  PaddingLearn({super.key});
  final ProjectPadding padding = ProjectPadding();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: padding.pagePaddingVertical,
          child: Column(
            children: [
              Padding(
                  padding: padding.pagePaddingRightOnly +
                      padding.pagePaddingVertical,
                  child: Container(color: Colors.white, height: 100)),
              const SizedBox(height: 20),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(color: Colors.white, height: 100),
              ),
              Container(
                color: Colors.blue,
                height: 100,
                padding: EdgeInsets.zero,
              ),
            ],
          ),
        ));
  }
}

class ProjectPadding {
  final pagePaddingVertical = const EdgeInsets.symmetric(vertical: 10);
  final pagePaddingRightOnly = const EdgeInsets.only(right: 30);
}
