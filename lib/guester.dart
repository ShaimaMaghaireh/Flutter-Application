import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
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
  List people=[{'name':'jone','age':25,'direction':''},
  {'name':'mary','age':24,'direction':''},
  {'name':'emily','age':26,'direction':''},
  {'name':'suzy','age':23,'direction':''},
  {'name':'teddy','age':22,'direction':''},
  {'name':'beary','age':21,'direction':''}];

   bool _iconVisible = false;
  IconData _icon=Icons.favorite;
  

  @override
Widget build(BuildContext context)
{
  return Scaffold(
    appBar: AppBar(
      title: Text('gester ',style: TextStyle(fontSize:40),),
      
    ),
    body:  Column(
      children: [
        Container(
          // color: Colors.blueAccent,
          width: 600,
          height: 600,
          child: ListView.builder(
          itemCount: people.length,
          itemBuilder:(context,index)
          {
            return GestureDetector(
              onLongPress: () 
              {
                print('you long pressed on ${people[index]['name']}');
              },
               
               onHorizontalDragEnd: (details)
               {
                setState(() {
                   setState(() {
              _iconVisible = true;
              _icon = details.primaryVelocity! > 0 ? Icons.favorite : Icons.delete;
            });
                });

               },
               
              onHorizontalDragStart: (details) {
                print('on horizontal drag start');
                if(details.globalPosition.dx>details.globalPosition.dy)
                {
                  setState(() {
                    people[index]['direction']="right";
                  
                  });
                   
                    print('swiped right');
                }
                
                else
                {
                  setState(() {
                    people[index]['direction']="left";
                  });
                  print('swiped left');
                }

              },

              onDoubleTap: () {
                print(' you choose ${people[index]['name']}');
              },

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(people[index]['name'],
                  style: TextStyle(fontSize:25,color: Color.fromARGB(255, 207, 89, 191))),
                  Text('-',style: TextStyle(fontSize:30,)),
                  Text(people[index]['age'].toString(),style: TextStyle(fontSize:25)),
                  Text(people[index]['direction'],style: TextStyle(fontSize:25,color: Color.fromARGB(255, 65, 250, 115)),textAlign: TextAlign.center,),
                ],
              ),
            );
          }
          
          ),
        )],
    ),
      floatingActionButton: _iconVisible
          ? FloatingActionButton(
              onPressed: () {
                setState(() {
                  _iconVisible = false;
                });
              },
              child: Icon(_icon),
            )
          : null,

    
  );
}
}
