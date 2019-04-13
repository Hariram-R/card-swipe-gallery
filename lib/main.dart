import 'package:flutter/material.dart';
import 'MessageRoute.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    precacheImage(new AssetImage("assets/greeting.jpg"), context);
    precacheImage(new AssetImage("assets/img(1).jpg"), context);
    precacheImage(new AssetImage("assets/img(3).jpg"), context);
    precacheImage(new AssetImage("assets/img(4).jpg"), context);
    precacheImage(new AssetImage("assets/img(5).jpg"), context);


    return new MaterialApp(
      title: "Card Gallery",
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        body: new MessageRoute(),
      ),
    );
  }
}

