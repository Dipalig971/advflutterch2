import 'package:flutter/cupertino.dart';

class CustomScrollScreen extends StatelessWidget {
  const CustomScrollScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          const CupertinoSliverNavigationBar(
            largeTitle: Text('My People'),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                  child: CupertinoListTile(
                    title: Text(
                      'Person ${index + 1}',
                      style: TextStyle(fontSize: 20),
                    ),
                    subtitle: Text(
                      '${index + 1}',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                );
              },
              childCount: 16,
            ),
          ),
        ],
      ),
    );
  }
}
