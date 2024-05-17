import 'package:advflutterch2/screen/%20CupertinoTabBar/provider/cupertinotab_bar_provider.dart';
import 'package:advflutterch2/screen/%20CupertinoTabBar/provider/sliver_provider.dart';
import 'package:advflutterch2/screen/%20CupertinoTabBar/view/CupertinoTabBar.dart';
import 'package:advflutterch2/screen/%20CupertinoTabBar/view/silver_segment_screen.dart';
import 'package:advflutterch2/screen/%20CupertinoTabBar/view/slider_screen.dart';
import 'package:advflutterch2/screen/CupertinoSliver/view/Cupertino_List_section_screen.dart';
import 'package:advflutterch2/screen/CupertinoSliver/view/Cupertino_list_section1.dart';
import 'package:advflutterch2/screen/CupertinoSliver/view/custom_scroll.dart';
import 'package:advflutterch2/screen/cupertinoactionsheet/view/cupertino_action_sheet.dart';
import 'package:advflutterch2/screen/cupertinoactionsheet/view/cupertino_context_menu_screen.dart';
import 'package:advflutterch2/screen/datepicker/android/provider/date_picker_provider.dart';
import 'package:advflutterch2/screen/datepicker/android/view/date_picker_screen.dart';
import 'package:advflutterch2/screen/datepicker/ios/view/date_picker.dart';
import 'package:advflutterch2/screen/pageview/view/bottomnavigationbar/bottom_navigation_bar_screen.dart';
import 'package:advflutterch2/screen/pageview/view/bottomnavigationbar/provider/bottom_navigation_provider.dart';
import 'package:advflutterch2/screen/pageview/view/page_view_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => RangeSliderprovider(),),
    ChangeNotifierProvider(create: (context) => BottomNavigationBarProvider(),),
    ChangeNotifierProvider(create: (context) => DatePickerProvider(),)
  ],builder: (context, child) =>  MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: DatePickerScreen(),
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return  MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Date_PickerScreen(),
//     );
//   }
// }

