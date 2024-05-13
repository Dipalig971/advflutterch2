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
        middle: Text('Display & Brightness'),
        trailing: CupertinoButton(
          child: Icon(CupertinoIcons.right_chevron), onPressed: () {
          Navigator.of(context).push(
              CupertinoPageRoute(builder: (context) => SilverSegmentScreen()));
        },),
      ),
      child:SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CupertinoListSection(
                header: Text('APPEARANCE'),
                children: [
                  // CupertinoListTile(title: imageAdd()),
                  CupertinoListTile(
                    title: Text('Automatic'),
                    trailing: CupertinoSwitch(
                      value:SliderProvidertrue!.isAuto,
                      onChanged: (value) {
                        SliderProviderfalse!.automatic(value);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}
