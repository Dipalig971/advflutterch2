import 'package:advflutterch2/screen/%20CupertinoTabBar/modal/tablist.dart';
import 'package:flutter/cupertino.dart';

class CupertinoTabBarScreen extends StatelessWidget {
  const CupertinoTabBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('CupertinoTabBar'),
      ),
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(items: const [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home)),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.settings)),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.heart)),
        ]),
        tabBuilder: (context, index) {
          return Center(
              child: Text(
            IconList[index],
            style: const TextStyle(fontSize: 25),
          ));
        },
      ),
    );
  }
}
