import 'package:flutter/cupertino.dart';

class SliderScreen extends StatelessWidget {
  const SliderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          CupertinoNavigationBar(
              // leading: Row(
              //   children: [
              //     Icon(CupertinoIcons.left_chevron),
              //     Text(
              //       'Settings',
              //       style: TextStyle(
              //           color: CupertinoColors.activeBlue,
              //           fontWeight: FontWeight.w400,
              //           fontSize: 20),
              //     ),
              //     SizedBox(
              //       width: 30,
              //     ),
              //     Text(
              //       'Display & Brightness',
              //       style: TextStyle(fontWeight: FontWeight.w500),
              //     )
              //   ],
              // ),
              ),
          // SliverFillRemaining(
          //   child: Column(
          //     children: [
          //       CupertinoListSection(
          //         children: const [
          //           CupertinoListTile(title: Text('fdgtfgv'))
          //         ],
          //       )
          //     ],
          //   ),
          // )fdgtfgvgv
        ],
      ),
    );
  }
}
