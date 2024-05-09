import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoListSectionScreen1 extends StatelessWidget {
  const CupertinoListSectionScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: CustomScrollView(
      slivers: [
        const CupertinoSliverNavigationBar(
          largeTitle: Text('Cupertino Lists Enhanced'),
        ),
        SliverFillRemaining(
          child: Column(
            children: [
              CupertinoListSection.insetGrouped(
                header: const Text(
                  'SINGLE SELECTION',
                  style: TextStyle(
                      fontSize: 15, color: CupertinoColors.inactiveGray),
                ),
                // dividerMargin: 0,
                footer: const Text(
                  'Choose a single item from a list of options',
                  style: TextStyle(
                      fontSize: 15, color: CupertinoColors.inactiveGray),
                ),
                children: const <CupertinoListTile>[
                  CupertinoListTile.notched(
                    title: Text(
                      'off',
                      style: TextStyle(fontSize: 19),
                    ),
                    trailing: Icon(
                      CupertinoIcons.checkmark,
                      color: CupertinoColors.activeBlue,
                    ),
                  ),
                  CupertinoListTile.notched(
                    title: Text(
                      'Wi-fi',
                      style: TextStyle(fontSize: 19),
                    ),
                  ),
                  CupertinoListTile.notched(
                    title: Text(
                      'Mobile Data',
                      style: TextStyle(
                          fontSize: 19, color: CupertinoColors.inactiveGray),
                    ),
                  ),
                ],
              ),
              CupertinoListSection.insetGrouped(
                header: const Text(
                  'MULTI SELECTION',
                  style: TextStyle(
                      fontSize: 15, color: CupertinoColors.inactiveGray),
                ),
                // dividerMargin: 0,
                footer: const Text(
                  'Choose a multiple item from a list of options',
                  style: TextStyle(
                      fontSize: 15, color: CupertinoColors.inactiveGray),
                ),
                children:  <CupertinoListTile>[
                  const CupertinoListTile.notched(
                    leading: Icon(
                      CupertinoIcons.checkmark,
                      color: CupertinoColors.activeBlue,
                    ),
                    title: Text(
                      'Option One',
                      style: TextStyle(
                          fontSize: 19, color: CupertinoColors.inactiveGray),
                    ),
                    subtitle: Text(
                      'Disabled and selected',
                      style: TextStyle(color: CupertinoColors.inactiveGray),
                    ),
                  ),
                  CupertinoListTile.notched(
                    title: const Text(
                      'Option two',
                      style: TextStyle(fontSize: 19),
                    ),
                    subtitle: const Text('WithSubtitle!'),
                    leading: Container(),
                  ),
                  const CupertinoListTile.notched(
                    title: Text(
                      'Option three',
                      style: TextStyle(
                        fontSize: 19,
                      ),
                    ),
                    leading: Icon(
                      CupertinoIcons.checkmark,
                      color: CupertinoColors.activeBlue,
                    ),
                  ),
                  CupertinoListTile.notched(
                    title: const Text(
                      'Option four',
                      style: TextStyle(
                        fontSize: 19,
                      ),
                    ),
                    leading: Container(),
                  ),
                  CupertinoListTile.notched(
                    title: const Text(
                      'Option five',
                      style: TextStyle(
                          fontSize: 19, color: CupertinoColors.inactiveGray),
                    ),
                    subtitle: const Text('Disabled and not Selected'),
                    leading: Container(),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    ));
  }
}
