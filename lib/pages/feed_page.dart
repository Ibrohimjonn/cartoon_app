import 'package:cartoon_app/pages/allmulti.dart';
import 'package:cartoon_app/pages/videos_page.dart';
import 'package:cartoon_app/widgets/categorytiles.dart';
import 'package:cartoon_app/widgets/settings_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Feed_Page extends StatefulWidget {

  @override
  State<Feed_Page> createState() => _Feed_PageState();
}

class _Feed_PageState extends State<Feed_Page> {


  int index = 0;
  final screens = [
    All_Multi(),
    Category_Page(),
    Videos_Page(),
    Center(child: Text('Fire'),),
    Settings_Page(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          screens[index],
        ],
      ),
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
              icon: Icon(MdiIcons.homeRoof),
              selectedIcon: Icon(MdiIcons.homeRoof,color: Colors.pink.shade200),
              label: 'Main',
            ),
            NavigationDestination(
              icon: Icon(MdiIcons.pound),
              selectedIcon: Icon(MdiIcons.pound,color: Colors.pink.shade200),
              label: 'Category',
            ),
            NavigationDestination(
              icon: Icon(MdiIcons.playOutline),
              selectedIcon: Icon(MdiIcons.play,color: Colors.pink.shade200),
              label: 'Videos',
            ),
            NavigationDestination(
              icon: Icon(MdiIcons.fire),
              selectedIcon: Icon(MdiIcons.fire,color: Colors.pink.shade200),
              label: 'Fire',
            ),
            NavigationDestination(
              icon: Icon(MdiIcons.cogOutline),
              selectedIcon: Icon(MdiIcons.cogOutline,color: Colors.pink.shade200),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}







