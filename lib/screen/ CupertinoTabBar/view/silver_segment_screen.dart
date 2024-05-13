import 'package:advflutterch2/screen/%20CupertinoTabBar/provider/cupertinotab_bar_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class SilverSegmentScreen extends StatelessWidget {
  const SilverSegmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const CupertinoPageScaffold(
      child: CupertinoNavigationBar(
        middle: Column(
          children: [
            Text('Title'),
             // CupertinoSegmentedControl(children: {
             //   // '0': home()
             // }, onValueChanged: (value) {
             //
             // },)
          ],
        ),
      ),
    );
  }
}