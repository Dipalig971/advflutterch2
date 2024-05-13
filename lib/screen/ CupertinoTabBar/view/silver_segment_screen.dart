import 'package:advflutterch2/screen/%20CupertinoTabBar/modal/tablist.dart';
import 'package:advflutterch2/screen/%20CupertinoTabBar/provider/cupertinotab_bar_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class SilverSegmentScreen extends StatelessWidget {
  const SilverSegmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            automaticallyImplyLeading: false,
            middle: const Text('Title'),
            largeTitle: Center(
              child: CupertinoSlidingSegmentedControl(
                groupValue: Provider.of<CupertinoSliderProvider>(context)
                    .index
                    .toString(),
                onValueChanged: (value) {
                  Provider.of<CupertinoSliderProvider>(context, listen: false)
                      .SliderTap(value!);
                },
                children: const {
                  '0': Text(
                    'Head1',
                    style: TextStyle(fontSize: 20),
                  ),
                  '1': Text(
                    'Head2',
                    style: TextStyle(fontSize: 20),
                  ),
                  '2': Text(
                    'Head3',
                    style: TextStyle(fontSize: 20),
                  ),
                },
              ),
            ),
          ),
          SliverFillRemaining(
            child: Center(
              child: Text(IconList[Provider.of<CupertinoSliderProvider>(context).index]),
            ),
          )
        ],
      ),
    );
  }
}
