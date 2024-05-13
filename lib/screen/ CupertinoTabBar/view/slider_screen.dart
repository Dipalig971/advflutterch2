import 'package:advflutterch2/screen/%20CupertinoTabBar/view/silver_segment_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import '../provider/sliver_provider.dart';

RangeSliderprovider? SliderProvidertrue;
RangeSliderprovider? SliderProviderfalse;

class SliderScreen extends StatelessWidget {
  const SliderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SliderProviderfalse =
        Provider.of<RangeSliderprovider>(context, listen: false);
    SliderProvidertrue =
        Provider.of<RangeSliderprovider>(context, listen: true);
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        automaticallyImplyLeading: false,
        middle: const Text('Display & Brightness'),
        trailing: CupertinoButton(
          child: const Icon(CupertinoIcons.right_chevron),
          onPressed: () {
            Navigator.of(context).push(CupertinoPageRoute(
                builder: (context) => const SilverSegmentScreen()));
          },
        ),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CupertinoListSection(
                header: const Text('APPEARANCE'),
                children: [
                  CupertinoListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 150,
                              width: 150,
                              child: Image.asset('assets/images/img1.png'),
                            ),
                            const Text('light'),
                            CupertinoRadio(
                              value: Brightness.light,
                              groupValue: SliderProvidertrue!.brightness,
                              onChanged: (value) {
                                SliderProviderfalse!
                                    .changeTheme(value ?? Brightness.light);
                              },
                            )
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 150,
                              width: 150,
                              child: Image.asset('assets/images/img2.png'),
                            ),
                            const Text('Dark'),
                            CupertinoRadio(
                              value: Brightness.dark,
                              groupValue: SliderProvidertrue!.brightness,
                              onChanged: (value) {
                                SliderProviderfalse!
                                    .changeTheme(value ?? Brightness.dark);
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  CupertinoListTile(
                    title: const Text('Automatic'),
                    trailing: CupertinoSwitch(
                      value: SliderProvidertrue!.isAuto,
                      onChanged: (value) {
                        SliderProviderfalse!.automatic(value);
                      },
                    ),
                  ),
                ],
              ),
              CupertinoListSection(
                header: const Text('BRIGHTNESS'),
                footer: const Text(
                    'Automatically adapt iPhone display based on ambient lighting conditions to make colors appear consistent in different environments.'),
                children: [
                  CupertinoListTile(
                      title: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        CupertinoIcons.sun_min,
                        color: CupertinoColors.systemGrey,
                      ),
                      CupertinoSlider(
                        value: SliderProvidertrue!.rangeslindervalue,
                        onChanged: (value) {
                          SliderProviderfalse!.rangeSliderChangeValue(value);
                        },
                      ),
                      const Icon(
                        CupertinoIcons.sun_max_fill,
                        color: CupertinoColors.systemGrey,
                      ),
                    ],
                  )),
                  CupertinoListTile(
                    title: const Text('True Tone'),
                    trailing: CupertinoSwitch(
                      value: SliderProvidertrue!.istone,
                      onChanged: (value) {
                        SliderProviderfalse!.truetone(value);
                      },
                    ),
                  )
                ],
              ),
              CupertinoListSection(
                children: const [
                  CupertinoListTile(
                    title: Text('Night Shift'),
                    additionalInfo: Row(
                      children: [
                        Text('Sunset to sunrise'),
                        Icon(
                          CupertinoIcons.chevron_right,
                          color: CupertinoColors.systemGrey,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              CupertinoListSection(
                children: [
                  const CupertinoListTile(
                    title: Text('Auto-Lock'),
                    additionalInfo: Row(
                      children: [
                        Text('3 Minutes'),
                        Icon(
                          CupertinoIcons.chevron_right,
                          color: CupertinoColors.systemGrey,
                        )
                      ],
                    ),
                  ),
                  CupertinoListTile(
                    title: const Text('Raise to wake'),
                    trailing: CupertinoSwitch(
                      value: SliderProvidertrue!.isWake,
                      onChanged: (value) {
                        SliderProviderfalse!.raisetowake(value);
                      },
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
