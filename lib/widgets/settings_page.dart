import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Settings_Page extends StatefulWidget {
  const Settings_Page({Key? key}) : super(key: key);

  @override
  State<Settings_Page> createState() => _Settings_PageState();
}

class _Settings_PageState extends State<Settings_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings',style: TextStyle(color: Colors.black,fontSize: 24)),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          GestureDetector(
            child: Icon(CupertinoIcons.info,color: Colors.grey,size: 24,),
            onTap: (){
              print('tapped');
            },
          ),
          SizedBox(width: 10,),
        ],
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: ElevatedButton.icon(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                minimumSize: Size(342,56),
                alignment: Alignment.centerLeft,
                primary: Color(0xffE5EBF0),
                onPrimary: Colors.black,
                elevation: 0,
                animationDuration: Duration(milliseconds: 150),
              ),
              icon: Icon(CupertinoIcons.drop,color: Color(0xff999A9A),),
              label: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Theme',style: TextStyle(fontSize: 16)),
                  SizedBox(height: 3,),
                  Text('Select the way you app looks',style: TextStyle(fontSize: 14))
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            alignment: Alignment.center,
            child: ElevatedButton.icon(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                minimumSize: Size(342,56),
                alignment: Alignment.centerLeft,
                primary: Color(0xffE5EBF0),
                onPrimary: Colors.black,
                elevation: 0,
                animationDuration: Duration(milliseconds: 150),
              ),
              icon: Icon(CupertinoIcons.heart,color: Color(0xff999A9A),),
              label: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Favorites',style: TextStyle(fontSize: 16)),
                  SizedBox(height: 3,),
                  Text('Manage favorite wallpapers, memes,videos',style: TextStyle(fontSize: 14))
                ],
              ),
            ),
          ),
          SizedBox(height: 1,),
          Container(
            alignment: Alignment.center,
            child: ElevatedButton.icon(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                minimumSize: Size(342,56),
                alignment: Alignment.centerLeft,
                primary: Color(0xffE5EBF0),
                onPrimary: Colors.black,
                elevation: 0,
                animationDuration: Duration(milliseconds: 150),
              ),
              icon: Icon(Icons.save_alt_outlined,color: Color(0xff999A9A),),
              label: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('View Downloads',style: TextStyle(fontSize: 16)),
                  SizedBox(height: 3,),
                  Text('Tap to view downloaded data',style: TextStyle(fontSize: 14))
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            alignment: Alignment.center,
            child: ElevatedButton.icon(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                minimumSize: Size(342,56),
                alignment: Alignment.centerLeft,
                primary: Color(0xffE5EBF0),
                onPrimary: Colors.black,
                elevation: 0,
                animationDuration: Duration(milliseconds: 150),
              ),
              icon: Icon(CupertinoIcons.share,color: Color(0xff999A9A),),
              label: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Share',style: TextStyle(fontSize: 16)),
                  SizedBox(height: 3,),
                  Text('Share this app with your friends',style: TextStyle(fontSize: 14))
                ],
              ),
            ),
          ),
          SizedBox(height: 1,),
          Container(
            alignment: Alignment.center,
            child: ElevatedButton.icon(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                minimumSize: Size(342,56),
                alignment: Alignment.centerLeft,
                primary: Color(0xffE5EBF0),
                onPrimary: Colors.black,
                elevation: 0,
                animationDuration: Duration(milliseconds: 150),
              ),
              icon: Icon(MdiIcons.atom,color: Color(0xff999A9A),),
              label: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Similar Apps',style: TextStyle(fontSize: 16)),
                  SizedBox(height: 3,),
                  Text('Check out similar awesome apps.',style: TextStyle(fontSize: 14)),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            alignment: Alignment.center,
            child: ElevatedButton.icon(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                minimumSize: Size(342,56),
                alignment: Alignment.centerLeft,
                primary: Color(0xffE5EBF0),
                onPrimary: Colors.black,
                elevation: 0,
                animationDuration: Duration(milliseconds: 150),
              ),
              icon: Icon(CupertinoIcons.star,color: Color(0xff999A9A),),
              label: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Rate Us',style: TextStyle(fontSize: 16)),
                  SizedBox(height: 3,),
                  Text('Rate the app on Google Play.',style: TextStyle(fontSize: 14))
                ],
              ),
            ),
          ),
          SizedBox(height: 1,),
          Container(
            alignment: Alignment.center,
            child: ElevatedButton.icon(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                minimumSize: Size(342,56),
                alignment: Alignment.centerLeft,
                primary: Color(0xffE5EBF0),
                onPrimary: Colors.black,
                elevation: 0,
                animationDuration: Duration(milliseconds: 150),
              ),
              icon: Icon(CupertinoIcons.chat_bubble_text,color: Color(0xff999A9A),),
              label: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Feedback',style: TextStyle(fontSize: 16)),
                  SizedBox(height: 3,),
                  Text('We highly value your feedback.',style: TextStyle(fontSize: 14)),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            alignment: Alignment.center,
            child: ElevatedButton.icon(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                minimumSize: Size(342,56),
                alignment: Alignment.centerLeft,
                primary: Color(0xffE5EBF0),
                onPrimary: Colors.black,
                elevation: 0,
                animationDuration: Duration(milliseconds: 150),
              ),
              icon: Icon(CupertinoIcons.archivebox,color: Color(0xff999A9A),),
              label: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Clear Caches',style: TextStyle(fontSize: 16)),
                  SizedBox(height: 3,),
                  Text('Tap to clear Cache Data',style: TextStyle(fontSize: 14)),
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          Text('Cartoon App v5.0.0',style: TextStyle(color: Colors.pink.shade200,fontSize: 20),)
        ],
      ),
    );
  }
}
