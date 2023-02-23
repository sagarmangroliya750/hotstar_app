// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hotstar/downloads.dart';
import 'package:hotstar/grid_1.dart';
import 'package:hotstar/grid_2.dart';
import 'package:hotstar/grid_3.dart';
import 'package:hotstar/grid_5.dart';
import 'package:hotstar/grid_4.dart';
import 'package:modal_side_sheet/modal_side_sheet.dart';

import 'Modul.dart';

void main() {
  runApp(MaterialApp(home: myApp(),debugShowCheckedModeBanner: false,));
}

class myApp extends StatefulWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  State<myApp> createState() => _myAppState();
}
class _myAppState extends State<myApp> {

  List first =  ["myimg/1.webp","myimg/2.webp","myimg/3.webp","myimg/4.webp","myimg/5.webp","myimg/6.webp","myimg/7.webp",
    "myimg/8.webp","myimg/9.webp",];
  List second = ["myimg/s1.jpeg","myimg/s2.jpeg","myimg/s3.jpeg","myimg/s4.jpeg","myimg/s5.jpeg","myimg/s6.jpeg","myimg/s7.jpeg",
    "myimg/s8.jpeg","myimg/s9.jpeg","myimg/s10.jpeg","myimg/s11.jpeg","myimg/s12.jpeg",];
  List third =  ["myimg/t1.webp","myimg/t2.webp","myimg/t3.webp","myimg/t5.webp","myimg/t6.webp", "myimg/t7.webp","myimg/t8.webp",
    "myimg/t9.webp","myimg/t10.webp",];
  List fourth = ["myimg/f1.webp","myimg/f2.webp","myimg/f3.webp","myimg/f4.webp","myimg/f5.webp",];
  List fiveth = ["myimg/fi1.webp","myimg/fi2.webp","myimg/fi3.webp","myimg/fi4.webp","myimg/fi5.webp","myimg/fi6.webp","myimg/fi7.webp",
    "myimg/fi8.webp","myimg/fi9.webp","myimg/fi10.webp",];
  List sixth =  ["myimg/six1.webp","myimg/six2.webp","myimg/six3.webp","myimg/six4.webp","myimg/six5.webp","myimg/six6.webp","myimg/six7.webp",
    "myimg/six8.webp","myimg/six9.webp","myimg/six10.webp",];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        drawer: Drawer(
          backgroundColor: Colors.black87,
          child: ListView(
            children: [
              UserAccountsDrawerHeader(accountName:Text("Sagar Mangroliya",style:TextStyle(color:Colors.white)),
                  accountEmail:Text("hotstar123@gmail.com"),onDetailsPressed:() {},
                  decoration:BoxDecoration(gradient:LinearGradient(begin:Alignment.topLeft,
                      colors: [Colors.deepPurple,Colors.indigo,Colors.deepPurple,Colors.indigo])),
                  currentAccountPicture:CircleAvatar(
                    backgroundImage:NetworkImage("https://d2qp0siotla746.cloudfront.net/img/use-cases/profile-picture/template_0.jpg"),
                  )),
              ListTile(
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder:(context) {
                    return download();
                  },));
                },
                leading:Icon(Icons.download_for_offline,color:Colors.blueAccent,),
                title:Text("Downloads",style:TextStyle(color:Colors.white,fontSize:16)),
                subtitle: Text("Watch videos offline",style:TextStyle(color:Colors.white60,fontSize:13),),
              ),
              ListTile(
                leading:Icon(Icons.playlist_add,color:Colors.blueAccent,),

                title:Text("Watchlist",style:TextStyle(color:Colors.white,fontSize:16)),
                subtitle: Text("Save to watch later",style:TextStyle(color:Colors.white60,fontSize:13),),

              ),
              ListTile(
                leading:Icon(Icons.card_giftcard_outlined,color:Colors.blueAccent,),
                title:Text("Prizes",style:TextStyle(color:Colors.white,fontSize:16)),
                subtitle: Text("Prizes you won",style:TextStyle(color:Colors.white60,fontSize:13),),
              ),
              ListTile(
                leading:Icon(Icons.language,color:Colors.blueAccent,),
                title:Text("Languages",style:TextStyle(color:Colors.white,fontSize:16)),
              ),
              ListTile(
                leading:Icon(Icons.generating_tokens,color:Colors.blueAccent,),
                title:Text("Genres",style:TextStyle(color:Colors.white,fontSize:16)),
              ),
              ListTile(
                leading:Icon(Icons.settings,color:Colors.blueAccent,),
                title:Text("Preference",style:TextStyle(color:Colors.white,fontSize:16)),
              ),
              ListTile(
                leading:Icon(Icons.help,color:Colors.blueAccent,),
                title:Text("Help",style:TextStyle(color:Colors.white,fontSize:16)),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          leading: Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.list),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          title: Container(
            height: 80,
            width: 150,
            decoration: BoxDecoration(
                image: DecorationImage( image: AssetImage("myimg/Disney-Hotstar.jpg"),fit: BoxFit.fill)),
          ),
          backgroundColor: Color(0xff0f0553),
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
                              decoration: InputDecoration(hintText: '"Search Movies.."',
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
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(top:15,bottom:10),
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: 180.0,
                      initialPage: 0,
                      disableCenter: true,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 900),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                    ),
                    items: Modul().image.map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            decoration:BoxDecoration(image:DecorationImage(image:AssetImage('$i'),fit:BoxFit.fitHeight,),
                                borderRadius:BorderRadius.circular(10)),
                          );
                        },
                      );
                    }).toList(),
                  )),
            Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) {
                      return grid_1(second);
                    },));
                  },
                  child: Container(
                    height:37,width:double.infinity,
                    alignment:Alignment.centerLeft,
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("   Latest & Trending",style:TextStyle(fontSize:17,color:Colors.white),),
                        IconButton(onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) {
                            return grid_1(second);
                          },));
                        },icon: Icon(Icons.arrow_forward_ios,size: 14),color: Colors.white54),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 150,
                  child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: second.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount:1,crossAxisSpacing:2,childAspectRatio:1.4,mainAxisSpacing:7),
                    itemBuilder: (context, index) {
                      return ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Image.asset(second[index],fit: BoxFit.fill,));
                    },),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) {
                      return grid_2(third);
                    },));
                  },
                  child: Container(
                    height:37,width:double.infinity,
                    alignment:Alignment.centerLeft,
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("   Popular Show",style:TextStyle(fontSize:17,color:Colors.white),),
                        IconButton(onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) {
                            return grid_2( third);
                          },));
                        }, icon: Icon(Icons.arrow_forward_ios,size: 14),color: Colors.white54,),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 150,

                  child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: third.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,crossAxisSpacing: 2,childAspectRatio:1.4,mainAxisSpacing:7), itemBuilder: (context, index) {
                    return ClipRRect(
                        borderRadius: BorderRadius.circular(4),

                        child: Image.asset(third[index],fit: BoxFit.fill,));
                  },),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) {
                      return grid_3(fourth);
                    },));
                  },
                  child: Container(
                    height:37,width:double.infinity,
                    alignment:Alignment.centerLeft,
                    //color:Colors.blueAccent,
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("   Movies Recommended For You",style:TextStyle(fontSize:17,color:Colors.white),),
                        IconButton(onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) {
                            return grid_3(fourth);
                          },));
                        }, icon: Icon(Icons.arrow_forward_ios,size: 14),color: Colors.white54,),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 150,
                  child: GridView.builder(
                    itemCount:fourth.length,
                    scrollDirection: Axis.horizontal,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,crossAxisSpacing: 2,childAspectRatio:1.4,mainAxisSpacing:7), itemBuilder: (context, index) {
                    return ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Image.asset(fourth[index],fit: BoxFit.fill,));
                  },),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) {
                      return grid_4(fiveth);
                    },));
                  },
                  child: Container(
                    height:37,width:double.infinity,
                    alignment:Alignment.centerLeft,
                    //color:Colors.blueAccent,
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("   Popular Movies",style:TextStyle(fontSize:17,color:Colors.white),),
                        IconButton(onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) {
                            return grid_4(fiveth);
                          },));
                        }, icon: Icon(Icons.arrow_forward_ios,size: 14),color: Colors.white54,),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 150,
                  child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: fiveth.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,crossAxisSpacing: 2,childAspectRatio:1.4,mainAxisSpacing:7), itemBuilder: (context, index) {
                    return ClipRRect(
                        borderRadius: BorderRadius.circular(4),

                        child: Image.asset(fiveth[index],fit: BoxFit.fill,));
                  },),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) {
                      return grid_5(sixth);
                    },));
                  },
                  child: Container(
                    height:37,width:double.infinity,
                    alignment:Alignment.centerLeft,
                    //color:Colors.blueAccent,
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("   Best Of Foreign Shows Dubbed",style:TextStyle(fontSize:17,color:Colors.white),),
                        IconButton(onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) {
                            return grid_5(sixth);
                          },));
                        }, icon: Icon(Icons.arrow_forward_ios,size: 14),color: Colors.white54,),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 150,
                  child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: sixth.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount:1,crossAxisSpacing:2,childAspectRatio:1.4,mainAxisSpacing:7), itemBuilder: (context, index) {
                    return ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Image.asset(sixth[index],fit: BoxFit.fill,));
                  },),
                ),
                SizedBox(height:30)
              ],
            )
          ],
        ),
      ),
    );
  }
}
