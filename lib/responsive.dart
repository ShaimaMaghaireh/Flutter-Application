import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'Tasks.dart';

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
      appBar: AppBar(title: Text('Responsive'),),
      body: LayoutBuilder(
        builder:(context,Constraints)
        {
          if(Constraints.maxWidth>1200)
          {
            return DesktopLayout();
          }

          else if(Constraints.maxWidth<=1200 && Constraints.maxWidth>=800)
          {
            return TabletLayout();
          }
          else
          {
            return MobileLayout();
          }

        
        },
    ),
    );
  }
}

class DesktopLayout extends StatelessWidget
{
  @override
 Widget build(BuildContext context)
 {
  return Scaffold(
    appBar:PreferredSize(
          preferredSize: Size.fromHeight(70.0),
      child: AppBar(
        backgroundColor:Color.fromRGBO(125, 12, 121, 1),
        leading:
        Row(
          children: [
            CircleAvatar(
           radius: 55,
            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWlQ4x2xmTPgfq2OzGZAsxFjLpp0hjM1UALg&s'),
            ),
             
             MaterialButton(onPressed: (){},
             child:Text('Photo',style: TextStyle(color:Colors.deepOrange,fontSize:15)),
             ),

              MaterialButton(onPressed: (){},
             child:Text('Rates',style: TextStyle(color:Colors.deepOrange,fontSize:15)),
             ),

              MaterialButton(onPressed: (){},
             child:Text('Buy',style: TextStyle(color:Colors.deepOrange,fontSize:15),),
             ),

          ],
        ),
      
        ),
        ),
    body:ListView(
      children: [
        Row(
          children: [
            Container(
              width: 200,
              height: 300,
              color: Colors.blue,
              child: Text('slidebar'),
            ),
             Container(
              width: 200,
              height: 300,
              color: Colors.blue,
              child: Text('Descktop'),

            ),
             Container(
              width: 200,
              height: 300,
              color: Colors.blue,
              child: Text('slidebar'),

            )
          ],
        )
      ],
    ),
  );
 }
}

class TabletLayout extends StatelessWidget
{
  @override
 Widget build(BuildContext context)
 {
    return Scaffold(
    appBar:PreferredSize(
          preferredSize: Size.fromHeight(70.0),
      child: AppBar(
        backgroundColor:Color.fromRGBO(125, 12, 121, 1),
        leading:
        Row(
          children: [
            CircleAvatar(
           radius: 55,
            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWlQ4x2xmTPgfq2OzGZAsxFjLpp0hjM1UALg&s'),
            ),
             
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
              width: 90,
              margin: EdgeInsets.only(left: 150),
              child: Drawer(
                backgroundColor: const Color.fromARGB(255, 169, 205, 224),
                child: IconButton(icon: Icon(Icons.menu),
                onPressed:()
                {
              
                } ,),
              ),
            )
          ],
        ),
      
        ),
        ),

    body:ListView(
      children: [
        Row(
          children: [
       Text('Fuji Mountain',style: TextStyle(color: Colors.blueGrey,fontSize: 30),
      textAlign: TextAlign.center,),

             Container(
              width: 500,
              height: 500,
              color: Colors.blue,
              child:  Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          width:  600,
          height: 400,
          child: Image.network('https://i0.wp.com/tokyotreatblog.wpcomstaging.com/wp-content/uploads/2024/02/mt-fuji-japan-thumbnail.webp?fit=1024%2C683&ssl=1'),
        ),

             ),
          ],
        )
      ],
    ),
  );
 }
}

class MobileLayout extends StatelessWidget
{
  @override
 Widget build(BuildContext context)
 {
   return Scaffold(
    appBar:PreferredSize(
          preferredSize: Size.fromHeight(70.0),
      child: AppBar(
        backgroundColor:Color.fromRGBO(125, 12, 121, 1),
        leading:
        Row(
          children: [
            CircleAvatar(
           radius: 55,
            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWlQ4x2xmTPgfq2OzGZAsxFjLpp0hjM1UALg&s'),
            ),
             
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
              width: 90,
              margin: EdgeInsets.only(left: 150),
              child: Drawer(
                backgroundColor: const Color.fromARGB(255, 169, 205, 224),
                child: IconButton(icon: Icon(Icons.menu),
                onPressed:()
                {
              
                } ,),
              ),
            )
          ],
        ),
      
        ),
        ),

    
    body:ListView(
      children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          width:  600,
          height: 400,
          child: Image.network('https://i0.wp.com/tokyotreatblog.wpcomstaging.com/wp-content/uploads/2024/02/mt-fuji-japan-thumbnail.webp?fit=1024%2C683&ssl=1'),
        ),
        Text('Fuji Mountain',style: TextStyle(color: Colors.blueGrey,fontSize: 30),
        textAlign: TextAlign.center,)
      ],
    ),
      
    
  );
 }
}