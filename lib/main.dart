import 'package:advflutterch2/screen/%20CupertinoTabBar/provider/cupertinotab_bar_provider.dart';
import 'package:advflutterch2/screen/%20CupertinoTabBar/view/CupertinoTabBar.dart';
import 'package:advflutterch2/screen/%20CupertinoTabBar/view/silver_segment_screen.dart';
import 'package:advflutterch2/screen/%20CupertinoTabBar/view/slider_screen.dart';
import 'package:advflutterch2/screen/CupertinoSliver/view/Cupertino_List_section_screen.dart';
import 'package:advflutterch2/screen/CupertinoSliver/view/Cupertino_list_section1.dart';
import 'package:advflutterch2/screen/CupertinoSliver/view/custom_scroll.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => CupertinoSliderProvider(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: SliderScreen(),
    );
  }
}
