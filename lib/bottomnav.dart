import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import'screens.dart';

void main ()
{
  runApp(MyApp());
}

  class MyApp extends StatelessWidget
{
 @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: HomePage(),);
  }
}
class HomePage extends StatefulWidget
{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
{
  Widget screen=HomePage();
  @override

  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title:Text(' bottom navigation  '),),
        body: Center(
          child: Text(''),),
          bottomNavigationBar: BottomNavigationBar(
        items:const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle,color:Color.fromARGB(255, 72, 72, 231)),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message,color:Color.fromARGB(255, 72, 72, 231),),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings,color:Color.fromARGB(255, 72, 72, 231),),
            label: 'Settings',
          ),
        ],
        ),
        );
  }
}
class Messages extends StatelessWidget
{
  @override
   Widget build(BuildContext context)
   {
    return Text('this is messages page');
   }
}
class Profile extends StatelessWidget
{
  @override
   Widget build(BuildContext context)
   {
    return Text('this is profile page');
   }
}
class Setting  extends StatelessWidget
{
  @override
   Widget build(BuildContext context)
   {
    return Text('this is setting page');
   }
}