import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/bottomnav.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

void main ()
{
  runApp(MyApp());
}

class MyApp extends StatefulWidget
{
  @override
  _MyAppState createState() =>  _MyAppState ();
}

  class _MyAppState extends State<MyApp>
{
  Color _iconColor=Colors.white;
   int selectedRadio=1;
 @override
  Widget build(BuildContext context)
  {
    return NeumorphicApp(
       debugShowCheckedModeBanner: true,
       title: 'Neumorphic UI in flutter',
       themeMode: ThemeMode.light,
       theme: NeumorphicThemeData(
        baseColor: const Color.fromARGB(255, 204, 117, 219).withOpacity(0.4),
        lightSource: LightSource.topLeft,
        depth: 10,
       ),
       darkTheme: NeumorphicThemeData(
        baseColor: const Color.fromARGB(255, 122, 175, 219),
        lightSource: LightSource.topLeft
       ),
       home: Scaffold(
     extendBody: true,
    extendBodyBehindAppBar: true,
       appBar:PreferredSize(
          preferredSize: Size.fromHeight(80.0),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(19),
         color:Colors.blue.withOpacity(0.2),),
       
        child: AppBar(
          backgroundColor: Colors.transparent,
          leading: Container(
            margin: EdgeInsets.only(left: 10,bottom: 10),
            child:
             IconButton(
              iconSize: 30,
              style: IconButton.styleFrom(backgroundColor: Color.fromARGB(255, 23, 24, 24).withOpacity(0.4)),
              onPressed:() {},
               icon: Icon(Icons.menu,color: Color.fromARGB(255, 226, 229, 232)) ,),
         
          ),
          title:Container(
            margin: EdgeInsets.only(left: 40,bottom: 10),
            child: Text('Japan Nature',style:TextStyle(color:Colors.white,fontSize:22,fontWeight: FontWeight.bold))),
          actions: [Container(
            margin: EdgeInsets.only(bottom: 10,right: 10),
           child:
            IconButton(
              iconSize: 30,
              style: IconButton.styleFrom(backgroundColor: Color.fromARGB(255, 23, 24, 24).withOpacity(0.4)),
              onPressed:() {},
               icon: Icon(Icons.person,color: Color.fromARGB(255, 226, 229, 232)) ,),
           
          ),]),
      )),
          body:Container(
          decoration: BoxDecoration(
          image: DecorationImage(image:
          NetworkImage('https://i.pinimg.com/736x/ee/ed/d6/eeedd62e495e316865e5abe68889fce8.jpg'),
          fit: BoxFit.cover),
                  ),
          child:Center(
            child: Column(
              children: [
                Expanded(child:ListView(
                  children: [
                  Neumorphic(
                    child: Container(
                      width: 300,
                      height: 400,
                      color: Colors.deepPurple.withOpacity(0.4),
                      child:Column(
                        children: [
                           Container(
                            margin: EdgeInsets.all(15),
                            child: Text('Fuji Mountain',style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.bold,fontSize:20),)),
                           Text('''
Mount Fuji is one of Japan's
"Three Holy Mountains" along
with Mount Tate and Mount Haku.
It is a Special Place of Scenic
Beauty and one of Japan's Historic
Sites.It was added to the World
Heritage List as a Cultural Site
on June 22, 2013.According to UNESCO,
Mount Fuji has "inspired artists and
poets and been the object of
pilgrimage for centuries".''',
                            style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.bold,fontSize:15)),   
                        ],
                      ),  
                    ),
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.all(20),  
                ),

                Neumorphic(
                  child:Container(
                    width: 300,
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Neumorphic(
                          margin: EdgeInsets.all(5),
                          child:CircleAvatar(
                            radius: 50,
                          backgroundImage:
                      NetworkImage('https://img.freepik.com/free-photo/fuji-mountain-cherry-blossoms-spring-japan_335224-181.jpg'),),
                        ),
                         Neumorphic(
                          margin: EdgeInsets.all(5),
                          child:CircleAvatar(
                            radius: 50,
                          backgroundImage:
                      NetworkImage('https://img.freepik.com/free-photo/fuji-mountain-cherry-blossoms-spring-japan_335224-227.jpg?size=626&ext=jpg&ga=GA1.1.2008272138.1724371200&semt=ais_hybrid'),),
                        ),
                         Neumorphic(
                          margin: EdgeInsets.all(5),
                          child:CircleAvatar(
                            radius: 50,
                          backgroundImage:
                      NetworkImage('https://e1.pxfuel.com/desktop-wallpaper/358/825/desktop-wallpaper-japan-landscape-mount-fuji-and-backgrounds-fuji-mountain-japan.jpg'),),
                        ),
                         Neumorphic(
                          margin: EdgeInsets.all(5),
                          child:CircleAvatar(
                            radius: 50,
                          backgroundImage:
                      NetworkImage('https://c4.wallpaperflare.com/wallpaper/92/6/338/autumn-leaves-trees-park-japan-hd-wallpaper-preview.jpg'),),
                        ),
                        Neumorphic(
                          margin: EdgeInsets.all(5),
                          child:CircleAvatar(
                            radius: 50,
                          backgroundImage:
                      NetworkImage('https://p4.wallpaperbetter.com/wallpaper/358/528/934/autumn-the-city-mountain-japan-wallpaper-preview.jpg'),),
                        ),
                        
                      ],
                    ),
                  ),
                ),
                // Container(
                //   margin: EdgeInsets.only(top:100),
                //   child: Text('Recomended places to visit:')),
                Neumorphic(
                  margin: EdgeInsets.only(top: 50),
                  child:Container(
                    width: 200,
                    height: 400,
                    color: const Color.fromARGB(255, 214, 112, 146).withOpacity(0.4),
                    child: Column(
                      children: [
                        Text('Beautiful View',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Neumorphic(
                  child: Card(
                     margin: EdgeInsets.only(top: 30),
                    color:Colors.white,
                   child: Image.network('https://c4.wallpaperflare.com/wallpaper/611/69/87/japan-mountains-mount-fuji-asian-architecture-wallpaper-preview.jpg',
                   width: 300,
                   height: 200,),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      IconButton(onPressed: ()
                      {
                        setState(() {
                            _iconColor= _iconColor==Colors.white?Color.fromARGB(255, 218, 211, 111):Colors.white;
                             });
                      },
                       icon:Icon(Icons.star_border,size: 30,color:_iconColor)),
                       Text('(5.0)',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
                        
                    ],
                  ),
                )
                      ],
                    ),
                  ),
                ),
               
                //?
                  ],
                )),
              ],
            ),
          ),
        ),
       ),
    );
  }
}

  
