import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({Key? key, this.userName}) : super(key: key);
  final String name = 'veli';
  final String? userName;
  final ProjectKeys keys = ProjectKeys();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //Scaffold -> programımızın ana iskeletini oluşturur
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'welcome $name ${name.length}',
          maxLines: 2, //maximum 2 satır olabilir
          overflow: TextOverflow
              .ellipsis, // 2 satırdan fazla ise yanında 3 nokta olsun
          textAlign: TextAlign.right,
          style: ProjectStyles.welcomeStyle,
        ),
        Text(
          'welcome $name ${name.length}',
          maxLines: 2, //maximum 2 satır olabilir
          overflow: TextOverflow
              .ellipsis, // 2 satırdan fazla ise yanında 3 nokta olsun
          textAlign: TextAlign.right,
          style: Theme.of(context)
              .textTheme
              .headline5
              ?.copyWith(color: ProjectColors.welcomeColor),
        ), // kesinlikle böyle kullanma çok yanlış bir kullanım
        Text(userName ?? ''),
        Text(keys.welcome) //bu şekilde kullanılmaz
      ],
    )));
  }
}

class ProjectStyles {
  static const TextStyle welcomeStyle = TextStyle(
      wordSpacing: 2,
      decoration: TextDecoration.underline, //text altı çizgili olur
      fontStyle: FontStyle.italic,
      color: Colors.lime,
      letterSpacing: 2,
      fontSize: 16,
      fontWeight: FontWeight.w600);
}

class ProjectColors {
  static Color get welcomeColor => Colors.red;
  static Color goodByeColor = Colors.black;
  // bu iki özellik arasındaki fark ilki program çalıştığında bana direk değeri gösterir
  //ikinci için ise projeyi tekrar başlatmam gerekir
}

class ProjectKeys {
  final String welcome = 'Merhaba';
}
