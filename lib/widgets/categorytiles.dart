import 'package:flutter/material.dart';

class Category_Page extends StatefulWidget {
  const Category_Page({Key? key}) : super(key: key);

  @override
  State<Category_Page> createState() => _Category_PageState();
}

class _Category_PageState extends State<Category_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Settings',style: TextStyle(color: Colors.black,fontSize: 24)),
        actions: [
          GestureDetector(
            onTap: (){print("tapped");},
            child: Icon(Icons.search,color: Colors.black,size: 26,),
          ),
          SizedBox(width: 10,),
        ],
        elevation: 0,
      ),
      body: Center(
        child: Text('Category Page'),
      ),
    );
  }
}
