import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class FullScreen extends StatefulWidget {
  var lower,higher;
  FullScreen(this.lower,this.higher);

  @override
  _FullScreenState createState() => _FullScreenState();
}

class _FullScreenState extends State<FullScreen> {

  static const platform = const MethodChannel("com.flutter.epic/epic");
  bool isPressed=false;
  var progress;
  var _setWallpaper="...";
  var setwallbar=false;


  _save() async{

    setState(() {
      progheight=40.0;
    });

    var status = await Permission.storage.request();
    if (status.isGranted){
      var response = await Dio().get(widget.higher,options:Options(responseType:ResponseType.bytes));
      final result= await ImageGallerySaver.saveImage(Uint8List.fromList(response.data));
      print(result);
      return result;
    }
    else if(status.isDenied){
      throw("You need to give storage permission");
    }
    else if(status.isRestricted){
      openAppSettings();
    }
  }

  Future _download(var value, var width) async{

    Dio dio = new Dio();
    try{
      var dir = await getTemporaryDirectory();
      await dio.download(widget.higher,"${dir.path}/deskpixel.jpeg",
          onReceiveProgress:(rec,total){
            setState((){
              progress = ((rec/total)*100);
              progheight=(progress/100)*width;
              _setWallpaper=progress.toStringAsFixed(0)+"%";
              print(progress);
              if(progress == 100) _setWall(value);

            });
          });
    }catch(_){
      print(_);
    }
    setState((){
      progress = "Done!";
    });

  }

  Future _setWall(var value)async{
    String setWallpaper;
    try{
      var result = await platform.invokeMethod("setWall","deskpixel.jpeg $value");
      print(result);
      setWallpaper = "Wallpaper Updated Successfully";
    } on PlatformException catch(_){
      setWallpaper = "Failed to Set Wallpaper";
    }
    setState(() {
      _setWallpaper = setWallpaper;
    });
  }

  var progs=0;
  var isClicked= false;
  var progheight=0.0;


  @override
  Widget build(BuildContext context) {

    var height= MediaQuery.of(context).size.height;
    var width= MediaQuery.of(context).size.width;

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: InkWell(
                  onTap: (){
                    setState(() {
                      isPressed=!isPressed;
                      setwallbar=false;
                    });
                  },
                  child: InteractiveViewer(
                    panEnabled: false,
                    boundaryMargin: EdgeInsets.all(100),
                    minScale: 1,
                    maxScale: 2,
                    child: Image.network(
                      widget.higher,
                      fit: BoxFit.cover,
                      loadingBuilder: (BuildContext context, Widget child,
                          ImageChunkEvent? loadingProgress) {
                        if (loadingProgress == null) {
                          return child;
                        }
                        return Center(
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(Colors.pink.shade200),
                            backgroundColor: Color(0xffE5EBF0),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),

            ],
          ),
          Container(
            width: double.infinity,
            color: Colors.transparent,
            height: 40,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: 15,
                      width: double.infinity,
                    ),
                    AnimatedContainer(
                      duration: Duration(milliseconds: 50),
                      height: 15,
                      width: progheight,
                      color: Color.fromRGBO(245, 166, 185,1),
                    ),
                    Container(
                      height: 15,
                      width: double.infinity,
                      child: Center(child: Text(_setWallpaper,style: TextStyle(color:Colors.white),)),
                    ),
                  ],
                ),
              ],
            ),
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed:()async{
          var u =await _save();
          isClicked=true;
          if(u!=null){
            setState(() {
              progheight=width;
              _setWallpaper="Image Saved to Gallery";
            });
          }
        },
        label: Text('Download',style: TextStyle(color: Colors.white),),
        backgroundColor: Color.fromRGBO(245, 166, 185,1),
      ),
    );
  }
}