import 'package:flutter/material.dart';

// 各レクチャーのWidgetをLectureと命名しているためimport文を置き換えることでページを表示可能です
// 例　コメントアウトしている部分を解除すればTextLectureのコードを再現可能です。
// import 'package:flutter_useful_widget/pages/section2/scaffold_lecture.dart';
// import 'package:flutter_useful_widget/pages/section2/text_lecture.dart';
// import 'package:flutter_useful_widget/pages/section2/app_bar_lecture.dart';
// import 'package:flutter_useful_widget/pages/section2/image_lecture.dart';
// import 'package:flutter_useful_widget/pages/section2/icon_lecture.dart';
// import 'package:flutter_useful_widget/pages/section2/bottom_navigation_bar_lecture.dart';
// import 'package:flutter_useful_widget/pages/section2/drawer_lecture.dart';
// import 'package:flutter_useful_widget/pages/section2/floating_action_button_lecture.dart';
// import 'package:flutter_useful_widget/pages/section2/rich_text_lecture.dart';

// section3
// import 'package:flutter_useful_widget/pages/section3/container_lecture.dart';
// import 'package:flutter_useful_widget/pages/section3/column_lecture.dart';
// import 'package:flutter_useful_widget/pages/section3/row_lecture.dart';
// import 'package:flutter_useful_widget/pages/section3/stack_lecture.dart';
// import 'package:flutter_useful_widget/pages/section3/align_lecture.dart';
// import 'package:flutter_useful_widget/pages/section3/aspect_ratio_lecture.dart';
// import 'package:flutter_useful_widget/pages/section3/expanded_lecture.dart';
// import 'package:flutter_useful_widget/pages/section3/sized_box_lecture.dart';
// import 'package:flutter_useful_widget/pages/section3/center_lecture.dart';
// import 'package:flutter_useful_widget/pages/section3/clip_r_rect_lecture.dart';
// import 'package:flutter_useful_widget/pages/section3/divider_lecture.dart';
// import 'package:flutter_useful_widget/pages/section3/progress_indicator_lecture.dart';
// import 'package:flutter_useful_widget/pages/section3/spacer_lecture.dart';
// import 'package:flutter_useful_widget/pages/section3/opacity_lecture.dart';
// import 'package:flutter_useful_widget/pages/section3/bottom_navigation_bar_lecture.dart';
// import 'package:flutter_useful_widget/pages/section3/table_lecture.dart';
import 'package:flutter_useful_widget/pages/section3/wrap_lecture.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Lecture(title: 'Flutter Labo',)
    );
  }
}
