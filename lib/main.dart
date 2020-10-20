// import 'package:MusicApp/pages/PageOne.dart';
// import 'package:MusicApp/pages/PageTwo.dart';
import 'dart:ui';

import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home : HomePage()
  ));


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        appBar : AppBar(
          title:Text('Bottom Modal',style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.black,
          centerTitle: true,
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
               onTap: (){
                 showModalBottomSheet(
                   context: context,
                   builder: (context){
                     return Container(
                       height: 300,
                       decoration: BoxDecoration(color: Colors.black),
                       child: Column(
                         children: <Widget>[
                           Card(
                             child:  ListTile(
                             tileColor: Colors.white,
                             leading: Icon(Icons.photo),
                             title: Text('Photo'),
                             trailing:Icon(Icons.add_a_photo),
                           ),
                           ),

                           Card(
                             child:  ListTile(
                             tileColor: Colors.white,
                             leading: Icon(Icons.photo),
                             title: Text('Photo'),
                             trailing:Icon(Icons.add_a_photo),
                           ),
                           ),

                           Card(
                             child:  ListTile(
                             tileColor: Colors.white,
                             leading: Icon(Icons.photo),
                             title: Text('Photo'),
                             trailing:Icon(Icons.add_a_photo),
                           ),
                           ),


                           Card(
                             child:  ListTile(
                             tileColor: Colors.white,
                             leading: Icon(Icons.photo),
                             title: Text('Photo'),
                             trailing:Icon(Icons.add_a_photo),
                           ),
                           ),
                         ],
                       ),
                     );
                   });
               },
                child: Icon(
                  Icons.add,
                  size: 26.0,
                ),
              )
            ),
          ],
        ),
        body: Container(
          child:Center(
            child : Text('For showing up a bottom modal click appbar plus icon.')
          ),
        ),
      )
    );
  }
}
