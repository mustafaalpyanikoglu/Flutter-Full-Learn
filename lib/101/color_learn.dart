import 'package:flutter/material.dart';

class ColorLearnView extends StatelessWidget {
  const ColorLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Theme.of(context).colorScheme.error,
        child: Text(
          'data',
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(color: Theme.of(context).errorColor),
        ),
      ),
    );
  }
}

class ColorsItems {
  static const Color porchase = Color(0xffEDBF61);

  static const Color sulu = Color.fromRGBO(198, 237, 97, 1);
}
