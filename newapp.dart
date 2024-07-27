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
 int  currentindex=0;
  List images=['https://img.goodfon.com/wallpaper/big/e/66/boltsano-italiia-dolomity-gory-doma.webp','https://w0.peakpx.com/wallpaper/448/698/HD-wallpaper-small-flowers-pretty-small-delicate-tiny-nature-petals-flowers-spring-pink.jpg','https://w0.peakpx.com/wallpaper/163/295/HD-wallpaper-small-house-forest-house-cottage-nature-beautiful-field-landscape.jpg'];
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
        body :Center(
          child: Column(
              children:[
                Text('Image list'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [ 
                  IconButton(icon:Icon(Icons.navigate_before),
                  onPressed: () {
                  setState(() {
                    if(currentindex==0)
                    {
                      currentindex=currentindex;
                    }
                    else{
                      currentindex-=1;
                    }
                  });
                },),
                Container(
                  color:Colors.blue,
                  width: 200,
                  height: 200,
                  padding: EdgeInsets.all(5),
                  child:Column(
                    children: [
                      Image.network(images[currentindex],width: 200,height: 200,),
                      Container(
                        width:200,
                        height: 50,
                        child:ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: images.length,
                          itemBuilder:(context,index)
                          {
                            return Icon(Icons.circle,
                            size:images.length/0.34,
                            color: index == currentindex ? const Color.fromARGB(255, 184, 33, 243) : Colors.grey
                            );
                          }),
                      ),
                    ],
                
                  ),
                ),
                IconButton(
                  icon:     currentindex==images.length-1? Text(' '):Icon(Icons.navigate_next),
                  onPressed: () {
                  setState(() {
                  if(currentindex==images.length-1)
                  {
                    currentindex=currentindex;
                  }
                  else{
                    currentindex+=1;
                  }
                  });
                },
                
                ),
                ],
               
              ),
              ],
            ),
            
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