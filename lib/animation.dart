import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main()
{
  runApp(MyApp1());
}

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

class SecondPage extends StatefulWidget
{
  @override
  _secondpagestate createState() => _secondpagestate(); 
}
class _secondpagestate extends State<SecondPage>
with SingleTickerProviderStateMixin
{
  late AnimationController _controller;
  late Animation<double> _animation;

  @override

  void initState()
  {
    super.initState();
    _controller=AnimationController(vsync: this,
    duration: const Duration(seconds: 5));
    _animation= CurvedAnimation(parent: _controller,
     curve: Curves.easeInOut);
     _controller.forward();
  }
  
   @override
   void dispose()
   {
    _controller.dispose();
    super.dispose();
   }

    @override
    
    Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text('Second Page'),),
      body: Column(
        children: [
          Center(
            child: Hero(tag: 'hero-tag-1',
             child: AnimatedBuilder(animation:_animation,
             builder: (context, child) {
               return Transform.scale(
                scale: _animation.value,
                child: Container(
              width: 200,
              height: 200,
              color:Colors.blue,
              child: Center(
                child: Text('Hello from page 2 !'
                ,style:TextStyle(color: Colors.white,fontSize: 24),)
              ),
              ),
               );
             },),
             )
             ),
             Text('Information:',style: TextStyle(color: Colors.blueGrey,fontSize:30),)
        ],
      ),
    );
  }


}


// class SecondPage extends StatelessWidget
// {
//   @override
//   Widget build(BuildContext context)
//   {
//     return Scaffold(
//       appBar: AppBar(title: Text('Second Page'),),
//       body: Center(
//         child: Hero(tag: 'hero-tag-1',
//          child: Container(
//           width: 200,
//           height: 200,
//           color:Colors.blue,
//           child: Center(
//             child: Text('Hello from page 2 !'
//             ,style:TextStyle(color: Colors.white,fontSize: 24),)
//           ),
//           ),
//          )
//          ),
//     );
//   }
// }

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
          color:Colors.green,
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
        child: Hero(tag: 'hero-tag-3',
         child: Container(
          width: 200,
          height: 200,
          color:Colors.red,
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
        child: Hero(tag: 'hero-tag-4',
         child: Container(
          width: 200,
          height: 200,
          color:Colors.yellow,
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