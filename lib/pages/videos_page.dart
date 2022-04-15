import 'package:flutter/material.dart';

class Videos_Page extends StatefulWidget {
  const Videos_Page({Key? key}) : super(key: key);

  @override
  State<Videos_Page> createState() => _Videos_PageState();
}

class _Videos_PageState extends State<Videos_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Videos Page'),
      ),
    );
  }
}
