import 'package:advflutterch2/screen/pageview/view/bottomnavigationbar/provider/bottom_navigation_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_navigation_bar/responsive_navigation_bar.dart';

class BottomNavigationScreen extends StatelessWidget {
  const BottomNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: ResponsiveNavigationBar(
          backgroundColor: Colors.black,
      activeIconColor: Colors.black,
      selectedIndex: Provider.of<BottomNavigationBarProvider>(context).index,
      textStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      navigationBarButtons: const [
        NavigationBarButton(
          text: 'home',
          icon: Icons.home,
        ),
        NavigationBarButton(
          text: 'Search',
          icon: Icons.search,
        ),
        NavigationBarButton(
          text: 'Add',
          icon: Icons.add_box_outlined,
        ),
        NavigationBarButton(
          text: 'Reels',
          icon: Icons.video_call,
        ),
        NavigationBarButton(
          text: 'Profile',
          icon: Icons.person,
        )
      ],
      onTabChange: (value) {
        Provider.of<BottomNavigationBarProvider>(context,listen: false)
            .changeBottomIndex(value);
      },
    ));
  }
}
