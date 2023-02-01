import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/101/app_bar_learn.dart';
import 'package:flutter_full_learn/101/button_learn.dart';
import 'package:flutter_full_learn/101/column_learn.dart';
import 'package:flutter_full_learn/101/container_sized_box_learn.dart';
import 'package:flutter_full_learn/101/icon_learn.dart';
import 'package:flutter_full_learn/101/image_learn.dart';
import 'package:flutter_full_learn/101/indicator_learn.dart';
import 'package:flutter_full_learn/101/scaffold_learn.dart';

import '101/cart_learn.dart';
import '101/color_learn.dart';
import '101/custom_widger_learn.dart';
import '101/list_tile_learn.dart';
import '101/padding_learn.dart';
import '101/stack_learn.dart';
import '101/stateless_learn.dart';
import 'demos/note_demos_view.dart';
import 'demos/stack_demo_view.dart';

void main() {
  runApp(const MyApp()); //projeyi başlatyıor
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Projenin ana hatları burda çiziliyor ve devam ediyor
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          progressIndicatorTheme:
              const ProgressIndicatorThemeData(color: Colors.white),
          listTileTheme:
              const ListTileThemeData(contentPadding: EdgeInsets.zero),
          cardTheme: CardTheme(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          errorColor: ColorsItems.porchase,
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            backgroundColor: Colors.transparent,
            elevation: 0,
          )),
      home: StackDemoView(),
    );
  }
}
