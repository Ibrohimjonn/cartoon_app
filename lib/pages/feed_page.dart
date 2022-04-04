import 'package:cartoon_app/pages/allmuti_page.dart';
import 'package:flutter/material.dart';

class Feed_Page extends StatelessWidget {
  Feed_Page(this.index, {Key? key}) : super(key: key);
  var index;
  List allmulti = [
    'allmulti'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cartoon Gallery',style: TextStyle(color: Colors.black),),
          elevation: 0,
          backgroundColor: Colors.white,
          actions: [
            GestureDetector(
              onTap: (){},
              child: Icon(Icons.search,color: Colors.black,size: 26,),
            ),
            SizedBox(width: 10,)
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(38),
            child: Container(
              height: 38,
              color: Colors.white,
            ),
          ),
        ),
        body: All_Multi(allmulti[index]),
    );
  }
}







