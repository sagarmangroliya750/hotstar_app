// ignore_for_file: prefer_const_literals_to_create_immutables, camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

class download extends StatefulWidget {
  const download({Key? key}) : super(key: key);

  @override
  State<download> createState() => _downloadState();
}

class _downloadState extends State<download> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:Colors.black,
      appBar:AppBar(
        backgroundColor:Color(0xff000033),
        actions: [
          PopupMenuButton(shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(5))
              ,color:Colors.indigoAccent.shade100,itemBuilder:(context) =>
              [
                PopupMenuItem(child:Text("Select All")),
                PopupMenuItem(child:Text("Pause")),
                PopupMenuItem(child:Text("Resume")),
                PopupMenuItem(child:Text("Delete All")),
              ]
          ),
        ],
        title:const Text("Downloads"),
      ),
      body:Center(
        child: Column(
          children: [
            Container(
              margin:EdgeInsets.only(top:270),
              child: Icon(Icons.sim_card_download,color:Colors.white.withOpacity(0.2),
                size:100,
              ),
            ),
            Text("No Downloaded data",style:TextStyle(color:Colors.white.withOpacity(0.4)),)
          ],
        ),
      ),
    );
  }
}
