import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(width: 200, height: 200, child: Text('a' * 500)),
          const SizedBox.shrink(), //boş bir alan vermek için
          SizedBox.square(dimension: 50, child: Text('b' * 50)),
          Container(
            height: 50,
            constraints: const BoxConstraints(
                maxHeight: 200, minWidth: 100, minHeight: 100, maxWidth: 200),
            child: Text('cc' * 5),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: ProjectUtility.boxDecoration,
          )
        ],
      ),
    );
  }
}

class ProjectUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
      //color: Colors.red,
      borderRadius: BorderRadius.circular(10), //heryerden 10 veriyoruz
      gradient: //yukarıdan red başlasın
          const LinearGradient(colors: [Colors.red, Colors.black]),
      boxShadow: const [
        BoxShadow(color: Colors.green, offset: Offset(0.1, 1), blurRadius: 12)
      ],
      //shape: BoxShape.circle,
      border: Border.all(width: 10));
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
            borderRadius: BorderRadius.circular(10), //heryerden 10 veriyoruz
            gradient: //yukarıdan red başlasın
                const LinearGradient(colors: [Colors.red, Colors.black]),
            boxShadow: const [
              BoxShadow(
                  color: Colors.green, offset: Offset(0.1, 1), blurRadius: 12)
            ],
            //shape: BoxShape.circle,
            border: Border.all(width: 10));
}
