import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'fullscreen_page.dart';

class Multi_America extends StatefulWidget {

  @override
  State<Multi_America> createState() => _Multi_AmericaState();
}

class _Multi_AmericaState extends State<Multi_America> {

  _getId(var link){
    var wallID = 'https://drive.google.com/uc?export=download&id=';
    var c = 0;
    for(int i = 0;i<link.length; i++){
      if(link[i] == '/'){
        c++;
        continue;
      }
      if (c > 4 && c < 6) wallID += link[i];
    }
    return wallID;
  }

  _getGenre(var text){
    List type = [
      'multiamerica'
    ];

    List keyWords = [
      'america'
    ];

    text = text.toLowerCase();
    var c = 0;
    for(int i = 0; i < keyWords.length; i++){
      if(keyWords[i] == text){
        c = i ~/ 6;
        break;
      }
    }

    return type[c];

  }


  @override
  Widget build(BuildContext context) {

    var height= MediaQuery.of(context).size.height;
    var width= MediaQuery.of(context).size.width;

    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection(_getGenre('multiamerica')).snapshots(),
          builder:(BuildContext context,AsyncSnapshot <QuerySnapshot>snapshot){
            if(snapshot.hasError) {
              return Center(child: Text("Failed to load Wallpaper..",style:TextStyle(color: Colors.black,fontSize: 25)));
            }
            switch (snapshot.connectionState){
              case ConnectionState.waiting:
                return Center(
                    child: CircularProgressIndicator(
                      strokeWidth: 3,
                      valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF6C63FF)),
                      backgroundColor: Colors.white,
                    ));
              default:
                return GridView.builder(
                    scrollDirection: Axis.vertical,
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: snapshot.data!.docs.length,
                    addAutomaticKeepAlives: true,
                    itemBuilder: (context, i) {
                      var higher = _getId(snapshot.data!.docs[i]['higher']);
                      var lower = snapshot.data!.docs[i]['lower'];
                      print(higher);
                      return Padding(
                        padding: const EdgeInsets.all(3),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context,
                                PageRouteBuilder(
                                  barrierColor: Colors.white,
                                  transitionDuration: Duration(milliseconds: 200),
                                  pageBuilder: (context, animation, secondaryAnimation) {
                                    return FullScreen(lower,higher);
                                  },
                                )
                            );
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(7),
                            child: CachedNetworkImage(
                              imageUrl: higher,
                              fit: BoxFit.cover,
                              placeholder: (context,url) => Image.asset("assets/images/loading.gif"),
                            ),
                          ),
                        ),
                      );
                    },
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: (width/2)/ (height/3)
                    )
                );
            }}
      ),

    );
  }
}