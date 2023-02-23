// ignore_for_file: prefer_const_constructors, camel_case_types, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:modal_side_sheet/modal_side_sheet.dart';

class grid_2 extends StatefulWidget {
  List third;
  grid_2(this.third);

  @override
  State<grid_2> createState() => _grid_2State();
}

class _grid_2State extends State<grid_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black,
      appBar:AppBar(
        backgroundColor:Color(0xff000033),centerTitle:true,
        title:Text("Popular Show"),
        actions: [
          IconButton(
              onPressed: () {
                showModalSideSheet(
                    barrierDismissible: true,
                    width: double.infinity,
                    withCloseControll: false,
                    context: context,
                    body: ListView(
                      children: [
                        Padding( padding: EdgeInsets.all(10),
                          child: TextField(
                            decoration: InputDecoration(hintText: 'Search " Popular Show "',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                contentPadding: EdgeInsets.all(0.6),
                                prefixIcon: IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: Icon(
                                      Icons.arrow_back_outlined,
                                      color: Colors.black,
                                    ))),
                          ),
                        )
                      ],
                    ));
              },icon: Icon(Icons.search))
        ],
      ),
      body:GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:3,
          crossAxisSpacing:7,
          childAspectRatio:0.75,
          mainAxisSpacing:8 ), itemCount:widget.third.length,
        itemBuilder:(context, index) {
          return Container(
              decoration:BoxDecoration(borderRadius:BorderRadius.circular(4),image:DecorationImage(
                  image:AssetImage(widget.third[index]),fit:BoxFit.fill))
          );
        },),
    );
  }
}
