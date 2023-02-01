import 'package:flutter/material.dart';

class ColumnLearnView extends StatelessWidget {
  const ColumnLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              //ekranı yüzde olarak böler
              flex: 4, //%40
              child: Row(
                children: [
                  Expanded(child: Container(color: Colors.red)),
                  Expanded(child: Container(color: Colors.green)),
                  Expanded(child: Container(color: Colors.blue)),
                  Expanded(child: Container(color: Colors.pink)),
                ],
              )),
          const Spacer(flex: 2),
          Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceEvenly, //rowun ana özelliği
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text('a'),
                  Text('a2'),
                  Text('a3'),
                  Text('a4'),
                ],
              )),
          Expanded(flex: 2, child: Container(color: Colors.purple)),
          SizedBox(
              height: ProjectContainerSizes.cardHeight,
              child: Column(
                children: const [
                  Expanded(child: Text('data')),
                  Expanded(child: Text('data')),
                  Expanded(child: Text('data')),
                  Spacer(),
                  Expanded(child: Text('data')),
                ],
              )),
        ],
      ),
    );
  }
}

class ProjectContainerSizes {
  static const double cardHeight = 200;
}
