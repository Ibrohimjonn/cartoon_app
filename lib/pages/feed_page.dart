import 'package:cached_network_image/cached_network_image.dart';
import 'package:cartoon_app/pages/allmulti.dart';
import 'package:cartoon_app/pages/multi_japan.dart';
import 'package:cartoon_app/widgets/settings_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'multi_america.dart';

class Feed_Page extends StatefulWidget {

  @override
  State<Feed_Page> createState() => _Feed_PageState();
}

class _Feed_PageState extends State<Feed_Page> {


  int index = 0;
  final screens = [
    All_Multi(),
    Multi_America(),
    Multi_Japan(),
    Center(child: Text('Fire'),),
    Settings_Page(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.pink.shade50,
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(fontSize: 14,fontWeight: FontWeight.w500)
          ),
        ),
      child: NavigationBar(
        height: 60,
        backgroundColor: Colors.white,
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        selectedIndex: index,
        onDestinationSelected: (index) =>
        setState(() => this.index = index),
        destinations: [
          NavigationDestination(
            icon: Icon(CupertinoIcons.square_split_2x2),
            selectedIcon: Icon(CupertinoIcons.square_split_2x2_fill,color: Colors.pink.shade200),
            label: 'Main',
          ),
          NavigationDestination(
            icon: Icon(CupertinoIcons.collections),
            selectedIcon: Icon(CupertinoIcons.collections_solid,color: Colors.pink.shade200),
            label: 'Category',
          ),
          NavigationDestination(
            icon: Icon(CupertinoIcons.play),
            selectedIcon: Icon(CupertinoIcons.play_arrow_solid,color: Colors.pink.shade200),
            label: 'Videos',
          ),
          NavigationDestination(
            icon: Icon(CupertinoIcons.text_bubble),
            selectedIcon: Icon(CupertinoIcons.text_bubble_fill,color: Colors.pink.shade200),
            label: 'Fire',
          ),
          NavigationDestination(
            icon: Icon(CupertinoIcons.settings),
            selectedIcon: Icon(CupertinoIcons.settings,color: Colors.pink.shade200),
            label: 'Settings',
          ),
        ],
      ),
      ),
    );
  }
}







