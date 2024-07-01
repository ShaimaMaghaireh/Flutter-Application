import 'package:flutter/material.dart';
import 'package:flutter_application_2/main.dart';
void main ()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
 @override
  Widget build(BuildContext context)
  {
    return MaterialApp(home: HomePage(),);
  }
}

void display()
{
  print('WELCOME');
}
class HomePage extends StatelessWidget
{
  @override
  
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar:PreferredSize(
          preferredSize: Size.fromHeight(80.0),
      child: AppBar(
        backgroundColor:Color.fromRGBO(125, 12, 121, 1),
        leading: Container(
          margin: EdgeInsets.only(left: 10,bottom: 10),
          child: CircleAvatar(
           radius: 55,
            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWlQ4x2xmTPgfq2OzGZAsxFjLpp0hjM1UALg&s'),
        )),
        title:Container(
          margin: EdgeInsets.only(left: 40,bottom: 10),
          child: Text('Flower',style:TextStyle(color:Color.fromARGB(255, 60, 179, 234),fontSize:35))),
        actions: [Container(
          margin: EdgeInsets.only(bottom: 10,right: 10),
          child: ElevatedButton(onPressed:() => {display()}, child:Text('press'),
          style:ElevatedButton.styleFrom(padding: EdgeInsets.only(top:10,bottom:10),backgroundColor:Color.fromARGB(255, 245, 173, 239)),),
        )])),
       body:
        Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 50),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Color.fromARGB(255, 184, 81, 145)),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Type of Flower",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
          Container(
             margin: EdgeInsets.only(left: 50),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Color.fromARGB(255, 184, 81, 145)),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
               child: Text(
                '                            ',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
          Container(
             margin: EdgeInsets.only(left: 50),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Color.fromARGB(255, 184, 81, 145)),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Type of Flower",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          )
        ],
      ),
    );
  }
}
     