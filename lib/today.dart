import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: newpage(),
    );
  }
}

class newpage extends StatefulWidget
{
 @override
 State <newpage> createState() => _newpagestate();
}

 class  _newpagestate extends State <newpage>
{
   @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar:AppBar(
        backgroundColor: Colors.transparent,
      ),
      
        
       body:Container(
        decoration: BoxDecoration(
          image: DecorationImage(image:
          NetworkImage('https://i.pinimg.com/736x/24/b2/cc/24b2cc4d4e096af9e40266a692e24e21.jpg'),
          fit: BoxFit.cover),
         ),
         child:Center(
         child: Column(
         children: [
          Expanded(child:
           ListView(
        children: [
          Container(
            width: 200,
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  width: 90,
                  height: 30,
                  child: Text('All coffee',textAlign: TextAlign.center,
                  style:TextStyle(fontSize:15,fontWeight: FontWeight.bold,color: Colors.white),),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(255, 108, 180, 238).withOpacity(0.4),),
                ),
                 Container(
                  margin: EdgeInsets.all(10),
                  width: 90,
                  height: 30,
                  child: Text('Latte ',textAlign: TextAlign.center,
                  style:TextStyle(fontSize:15,fontWeight: FontWeight.bold,color: Colors.white),),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(255, 108, 180, 238).withOpacity(0.4),),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  width: 90,
                  height: 30,
                  child: Text('Espresso',textAlign: TextAlign.center,
                  style:TextStyle(fontSize:15,fontWeight: FontWeight.bold,color: Colors.white),),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(255, 108, 180, 238).withOpacity(0.4),),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  width: 90,
                  height: 30,
                  child: Text('Cappuccino',textAlign: TextAlign.center,
                  style:TextStyle(fontSize:15,fontWeight: FontWeight.bold,color: Colors.white),),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(255, 108, 180, 238).withOpacity(0.4),),
                ),
                 Container(
                  margin: EdgeInsets.all(10),
                  width: 90,
                  height: 30,
                  child: Text('Mocca',textAlign: TextAlign.center,
                  style:TextStyle(fontSize:15,fontWeight: FontWeight.bold,color: Colors.white),),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(255, 108, 180, 238).withOpacity(0.4),),
                ),
                
              ],
            ),
            ],
            ),
          ),
         
        Container(
          width: 300,
          height: 300,
          color: Colors.blue.withOpacity(0.4),
        )

        ],
       ),),
                      ],
                    ),
                  ),
       ),


    );
  }
}


