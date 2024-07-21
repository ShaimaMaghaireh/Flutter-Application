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
      appBar: AppBar(title:Text('this is a drawer page'),),
      drawer: Drawer(
        backgroundColor:Color.fromRGBO(236, 198, 251, 1),
        child: ListView
      (
        padding: EdgeInsets.zero,
        children: [
        DrawerHeader(
        decoration:BoxDecoration(color:Color.fromRGBO(151, 230, 254, 1)),
        child: Text('Drawer menu',style: TextStyle(fontSize:35,color:Color.fromARGB(255, 65, 20, 179)),)),
          //Icon(Icons.delete,color:Color.fromARGB(230, 165, 14, 14),size:25),
          ListTile(
            leading:Icon(Icons.account_circle,color:Color.fromARGB(255, 72, 72, 231)),
            title: Text('Profile'),
             onTap: () {
              setState(() {
                screen=Profile();
              });
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading:Icon(Icons.message,color:Color.fromARGB(255, 72, 72, 231),),
            title: Text('Messages'),
             onTap: () {
               setState(() {
                screen=Messages();
              });
              Navigator.of(context).pop();
            },
          ),
           ListTile(
            leading:Icon(Icons.settings,color:Color.fromARGB(255, 72, 72, 231)),
            title: Text('Settings'),
            onTap: () {
               setState(() {
                screen=Setting();
              });
              Navigator.of(context).pop();
            },
          ),
           ],
            
        ),
        ),
        body: Center(
          child:screen,
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