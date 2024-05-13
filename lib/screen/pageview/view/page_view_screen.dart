import 'package:advflutterch2/screen/pageview/view/intro1.dart';
import 'package:advflutterch2/screen/pageview/view/intro4.dart';
import 'package:flutter/material.dart';

import 'intro2.dart';
import 'intro3.dart';

class PageViewScreen extends StatelessWidget {
  const PageViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: const[
         IntroScreen1(),
         IntroScreen2(),
         IntroScreen3(),
         IntroScreen4(),
        ],
      ),
    );
  }
}
