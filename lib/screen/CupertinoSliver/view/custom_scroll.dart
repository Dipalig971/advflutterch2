import 'package:flutter/cupertino.dart';

class CustomScrollScreen extends StatelessWidget {
  const CustomScrollScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          const CupertinoSliverNavigationBar(
            largeTitle: Text('My People'),
          ),
          SliverFillRemaining(
            child:  Column(
              children: List.generate(
                14,
                    (index) =>
                        CupertinoListTile(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  title: Text(
                    'Person ${index + 1}',
                    style: const TextStyle(fontSize: 18),
                  ),
                  subtitle: Text(
                    '${index + 1}',
                    style: const TextStyle(fontSize: 15),
                  ),
                ),
              ),
            )
            // SliverList(
            //   delegate: SliverChildBuilderDelegate(
            //     (context, index) {
            //       return CupertinoListTile(
            //         title: Text(
            //           'Person ${index + 1}',
            //         ),
            //         subtitle: Text('${index + 1}'),
            //       );
            //     },
            //     childCount: 16,
            //   ),
            // ),

          ),
        ],
      ),
    );
  }
}
