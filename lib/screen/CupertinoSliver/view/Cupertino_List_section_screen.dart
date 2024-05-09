import 'package:flutter/cupertino.dart';

class CupertinoListSectionScreen extends StatelessWidget {
  const CupertinoListSectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(child: CustomScrollView(
      slivers: [
        const CupertinoSliverNavigationBar(
          largeTitle: Text('Settings'),
        ),
        SliverFillRemaining(
          child: Column(
            children: [
              CupertinoListSection(
                children: [
                  CupertinoListTile.notched(
                    title: const Text(
                      'General',
                      style: TextStyle(fontSize: 19),
                    ),
                    leading: Image.asset('assets/images/general.png'),
                    trailing: const Icon(
                      CupertinoIcons.right_chevron,
                      color: CupertinoColors.inactiveGray,
                    ),
                  ),
                  CupertinoListTile.notched(
                    title: const Text('Display & Brightness',
                        style: TextStyle(fontSize: 19)),
                    leading: Image.asset('assets/images/display.png'),
                    trailing: const Icon(
                      CupertinoIcons.right_chevron,
                      color: CupertinoColors.inactiveGray,
                    ),
                  ),
                  CupertinoListTile.notched(
                    title:
                        const Text('Wallpaper', style: TextStyle(fontSize: 19)),
                    leading: Image.asset('assets/images/wallpaper.png'),
                    trailing: const Icon(
                      CupertinoIcons.right_chevron,
                      color: CupertinoColors.inactiveGray,
                    ),
                  ),
                  CupertinoListTile.notched(
                    title: const Text('sound', style: TextStyle(fontSize: 19)),
                    leading: Image.asset('assets/images/sound.png'),
                    trailing: const Icon(
                      CupertinoIcons.right_chevron,
                      color: CupertinoColors.inactiveGray,
                    ),
                  ),
                  CupertinoListTile.notched(
                    title: const Text('Touch ID & Password',
                        style: TextStyle(fontSize: 19)),
                    leading: Image.asset('assets/images/touch.png'),
                    trailing: const Icon(
                      CupertinoIcons.right_chevron,
                      color: CupertinoColors.inactiveGray,
                    ),
                  ),
                  CupertinoListTile.notched(
                    title:
                        const Text('Privacy', style: TextStyle(fontSize: 19)),
                    leading: Image.asset('assets/images/password.png'),
                    trailing: const Icon(
                      CupertinoIcons.right_chevron,
                      color: CupertinoColors.inactiveGray,
                    ),
                  ),
                ],
              ),
              CupertinoListSection(
                children: [
                  CupertinoListTile.notched(
                    title: const Text(
                      'iCloud',
                      style: TextStyle(fontSize: 19),
                    ),
                    subtitle: Text('sarah@9to5mac.com'),
                    leading: Image.asset('assets/images/cloud.png'),
                    trailing: const Icon(
                      CupertinoIcons.right_chevron,
                      color: CupertinoColors.inactiveGray,
                    ),
                  ),
                  CupertinoListTile.notched(
                    title: const Text('iTunes & AppStore',
                        style: TextStyle(fontSize: 19)),
                    leading: Image.asset('assets/images/appstore.png'),
                    trailing: const Icon(
                      CupertinoIcons.right_chevron,
                      color: CupertinoColors.inactiveGray,
                    ),
                  ),
                  CupertinoListTile.notched(
                    title: const Text('Passbook & Apple pay',
                        style: TextStyle(fontSize: 19)),
                    leading: Image.asset('assets/images/passbook.png'),
                    trailing: const Icon(
                      CupertinoIcons.right_chevron,
                      color: CupertinoColors.inactiveGray,
                    ),
                  ),
                ],
              ),
              CupertinoListSection(
                children: [
                  CupertinoListTile.notched(
                    title: const Text(
                      'Mail,Contact,Calendar',
                      style: TextStyle(fontSize: 19),
                    ),
                    leading: Image.asset('assets/images/mail.png'),
                    trailing: const Icon(
                      CupertinoIcons.right_chevron,
                      color: CupertinoColors.inactiveGray,
                    ),
                  ),
                  CupertinoListTile.notched(
                    title: const Text('Notes', style: TextStyle(fontSize: 19)),
                    leading: Image.asset('assets/images/note.png'),
                    trailing: const Icon(
                      CupertinoIcons.right_chevron,
                      color: CupertinoColors.inactiveGray,
                    ),
                  ),
                  CupertinoListTile.notched(
                    title:
                        const Text('Reminders', style: TextStyle(fontSize: 19)),
                    leading: Image.asset('assets/images/reminder.png'),
                    trailing: const Icon(
                      CupertinoIcons.right_chevron,
                      color: CupertinoColors.inactiveGray,
                    ),
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
