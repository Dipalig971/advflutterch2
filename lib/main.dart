import 'package:advflutterch2/screen/CupertinoSliver/view/Cupertino_List_section_screen.dart';
import 'package:advflutterch2/screen/CupertinoSliver/view/Cupertino_list_section1.dart';
import 'package:advflutterch2/screen/CupertinoSliver/view/custom_scroll.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoListSectionScreen1(),
    );
  }
}

