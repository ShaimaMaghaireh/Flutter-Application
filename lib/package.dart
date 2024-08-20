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
   int selectedRadio=1;
 @override
  Widget build(BuildContext context)
  {
    return NeumorphicApp(
       debugShowCheckedModeBanner: true,
       title: 'Neumorphic UI in flutter',
       themeMode: ThemeMode.light,
       theme: NeumorphicThemeData(
        baseColor: Colors.purple.withOpacity(0.4),
        lightSource: LightSource.topLeft,
        depth: 8,
       ),
       darkTheme: NeumorphicThemeData(
        baseColor: Colors.blue,
        lightSource: LightSource.topLeft
       ),
       home: Scaffold(
        appBar: NeumorphicAppBar(
          color:Colors.blue.withOpacity(0.4),
          title: Text('Neumorphic UI in Flutter '),
        ),
        body: Center(
          child:SingleChildScrollView(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Neumorphic(
                  style: NeumorphicStyle(
                    shadowLightColor: Color.fromARGB(255, 79, 157, 220),
                    depth: 15,
                    color: Colors.pink.withOpacity(0.5),
                    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                  ),
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text('data'),
                      Text('Container',style:TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      Image.network('https://www.eurokidsindia.com/blog/wp-content/uploads/2024/06/photorealistic-galaxy-background-min-1.jpg',width: 90,height: 80,),

                    ],
                  ),
                ),
                SizedBox(height: 20,),

                NeumorphicRadio<int>(
                  style: NeumorphicRadioStyle(selectedColor:Colors.blue),
                 value: 1,
                 groupValue: selectedRadio,
                 onChanged: (value) {
                   setState(() {
                     selectedRadio= value! ;
                   });
                   print("Neumorphic Radio selected : $value");
                 },
                 padding: EdgeInsets.all(8.0),
                 child: Text('Radio 1'),
                ),
                 SizedBox(height: 20,),

                NeumorphicRadio<int>(
                 style: NeumorphicRadioStyle(selectedColor:Colors.blue),
                 value: 2,
                 groupValue: selectedRadio,
                 onChanged: (value) {
                   setState(() {
                     selectedRadio= value! ;
                   });
                   print("Neumorphic Radio selected : $value");
                 },
                 padding: EdgeInsets.all(8.0),
                 child: Text('Radio 2'),
                ),
                NeumorphicButton(
                  margin: EdgeInsets.all(15),
                  child: IconButton(onPressed: (){}, icon: Icon(Icons.home)),
                  style: NeumorphicStyle(color: Color.fromARGB(255, 23, 141, 199).withOpacity(0.4)),
                )
              ],
            ),
          )
        ),
       ),
    );
  }
}


