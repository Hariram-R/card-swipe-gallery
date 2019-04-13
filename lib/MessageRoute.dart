import 'package:flutter/material.dart';
import 'PhotosRoute.dart';

class MessageRoute extends StatelessWidget {
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              new SliverAppBar(
                expandedHeight: 300.0,
                floating: false,
                backgroundColor: Colors.brown,
                pinned: true,
                flexibleSpace: new FlexibleSpaceBar(
                    centerTitle: true,
                    title: new Text("",
                        style: new TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        )),
                    background:new Image.asset(
                      "assets/greeting.jpg",
                      fit: BoxFit.fitHeight,
                      gaplessPlayback: true,
                    )),
              ),
            ];
          },
          body: new SingleChildScrollView(
            child: new Column(
              children: <Widget>[
                new Card(
                  child: new Padding(
                    padding: new EdgeInsets.all(10.0),
                    child: new Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new ListTile(
                          title: new Text(
                            "Happy Birthday!",
                            style: new TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                          subtitle: new Text(
                            "You can insert a perssonlized message here for your loved along with the gallery.\n\nYours lovingly,\nYour Name\n\nP.S. Insert PS message",
                            style: new TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                new Container(
                  margin: new EdgeInsets.only(top: 10.0,left: 5.0,right: 5.0),
                  child: new SizedBox(
                    child: new RaisedButton(
                      padding: new EdgeInsets.all(10.0),
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: new Text("View Gallery"),
                      onPressed: () {
                        Navigator.push(context, new MaterialPageRoute(builder: (context)=>new PhotosRoute()),);
                      },
                    ),
                    width: 480.0,
                    height: 50.0,
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}


