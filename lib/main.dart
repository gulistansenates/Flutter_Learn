import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '101/app_bar_learn.dart';
import '101/button_learn.dart';
import '101/card_learrn.dart';
import '101/color_learn.dart';
import '101/column_row_learn.dart';
import '101/container_sized_box_learn.dart';
import '101/custom_widget_learn.dart';
import '101/icon_learn.dart';
import '101/image_learn.dart';
import '101/indicator_learn.dart';
import '101/list_tile_learn.dart';
import '101/padding_learn.dart';
import '101/scaffold_learn.dart';
import '101/stack_learn.dart';
import '101/stateless_learn.dart';
import '101/text_learn.dart';
import 'package:flutter_learn/demos/note_demos_view.dart';

import 'demos/stack_demo_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
          listTileTheme:
              const ListTileThemeData(contentPadding: EdgeInsets.zero),
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            backgroundColor: Colors.black,
            elevation: 0,
          )),
      home: const StackDemoView(),
    );
  }
}
