import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class MyApp1 extends StatelessWidget
{
  @override

  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: 'Flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: FirstPage(),
    );
  }
}
 

class FirstPage extends StatelessWidget
{
  @override

   Widget build(BuildContext context)
   {
    return Scaffold(
      appBar: AppBar(title: Text('First Page'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: ()
              {
                Navigator.push(context,MaterialPageRoute(builder:(context)=> SecondPage()));
              },
              child:Hero(tag: 'hero-tag-1',
               child:Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Center(
                  child: Text('Tap me!',
                  style: TextStyle(color: Colors.white),),
                ),
               )),
            ),
            SizedBox(height: 20,),
            
             GestureDetector(
              onTap: ()
              {
                Navigator.push(context,MaterialPageRoute(builder:(context)=> ThirdPage()));
              },
              child:Hero(tag: 'hero-tag-2',
               child:Container(
                width: 100,
                height: 100,
                color: Colors.green,
                child: Center(
                  child: Text('Tap me!',
                  style: TextStyle(color: Colors.white),),
                ),
               )),
            ),
            SizedBox(height: 20,),

             GestureDetector(
              onTap: ()
              {
                Navigator.push(context,MaterialPageRoute(builder:(context)=> FourthPage()));
              },
              child:Hero(tag: 'hero-tag-3',
               child:Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: Center(
                  child: Text('Tap me!',
                  style: TextStyle(color: Colors.white),),
                ),
               )),
            ),
            SizedBox(height: 20,),

             GestureDetector(
              onTap: ()
              {
                Navigator.push(context,MaterialPageRoute(builder:(context)=> FifthPage()));
              },
              child:Hero(tag: 'hero-tag-4',
               child:Container(
                width: 100,
                height: 100,
                color: Colors.yellow,
                child: Center(
                  child: Text('Tap me!',
                  style: TextStyle(color: Colors.white),),
                ),
               )),
            ),

          ],
        ),
      ),
    );
   }
}

class SecondPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text('Second Page'),),
      body: Center(
        child: Hero(tag: 'hero-tag-1',
         child: Container(
          width: 200,
          height: 200,
          color:Colors.blue,
          child: Center(
            child: Text('Hello from page 2 !'
            ,style:TextStyle(color: Colors.white,fontSize: 24),)
          ),
          ),
         )
         ),
    );
  }
}

class ThirdPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text('Second Page'),),
      body: Center(
        child: Hero(tag: 'hero-tag-2',
         child: Container(
          width: 200,
          height: 200,
          color:Colors.blue,
          child: Center(
            child: Text('Hello from page 3 !'
            ,style:TextStyle(color: Colors.white,fontSize: 24),)
          ),
          ),
         )
         ),
    );
  }
}

class FourthPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text('Second Page'),),
      body: Center(
        child: Hero(tag: 'hero-tag-1',
         child: Container(
          width: 200,
          height: 200,
          color:Colors.blue,
          child: Center(
            child: Text('Hello from page 2 !'
            ,style:TextStyle(color: Colors.white,fontSize: 24),)
          ),
          ),
         )
         ),
    );
  }
}

class FifthPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text('Second Page'),),
      body: Center(
        child: Hero(tag: 'hero-tag-1',
         child: Container(
          width: 200,
          height: 200,
          color:Colors.blue,
          child: Center(
            child: Text('Hello from page 2 !'
            ,style:TextStyle(color: Colors.white,fontSize: 24),)
          ),
          ),
         )
         ),
    );
  }
}