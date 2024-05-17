import 'package:advflutterch2/screen/sliver_widets/modal/color_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SliverScreen extends StatelessWidget {
  const SliverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            expandedHeight: 160,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/bg.jpg',
                fit: BoxFit.cover,
              ),
              title: const Text('Sliver App'),
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ColorContanier(
                ColorList[index]['color'],
              ),
              childCount: ColorList.length,
            ),
            gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          )
          // SliverList(
          //   delegate: SliverChildBuilderDelegate(
          //       (context, index) => ColorContanier(
          //         ColorList[index]['color']
          //       ),
          //       childCount: ColorList.length),
          // ),
        ],
      ),
    );
  }

  Widget ColorContanier(Color color) {
    return Container(
      height: 150,
      width: 200,
      decoration: BoxDecoration(color: color),
    );
  }
}
