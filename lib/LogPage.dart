import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

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
      home: firstpage(),
    );
  }
}

class firstpage extends StatefulWidget
{
 @override
 State <firstpage> createState() => _firstpagestate();
}

 class  _firstpagestate extends State <firstpage>
 {
  GlobalKey<FormState> _key=GlobalKey<FormState>();
  List<Map> allUsers=[{'username':'admin','password':'admin'},
  {'username':'user','password':'user'}];

  String username='';
  String password='';
  
  final TextEditingController _usernameController = TextEditingController();
  
  @override
   Widget build(BuildContext context)
   {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 134, 185, 227),
      body: Center(
      child: ListView(
       children: [
         SizedBox(width: 100,height: 100,),
       Image.network('https://cdn-icons-png.flaticon.com/512/6554/6554215.png',width: 200,height: 200,),
       SizedBox(width: 50,height: 50,),
        Form(
            key: _key,
            child:Column(
        children: [
         Container(
          width: 300,
          height: 60,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
          color: Color.fromARGB(255, 206, 89, 130).withOpacity(0.4),),
           child: TextFormField(
            controller: _usernameController,
            autocorrect: true,
            onSaved: (newValue)
             {
             setState(() {
               username=newValue!;
             });
           },
           validator: (value)
            {
             if(value!.isEmpty)
             {
              return "User name cannot be empty";
             }
           },
           decoration:InputDecoration(label:Text('Username'),
           labelStyle: TextStyle(color: Colors.white,
           fontWeight: FontWeight.bold,fontSize:20),
           contentPadding: EdgeInsets.all(10),
           border: UnderlineInputBorder(borderRadius: BorderRadius.circular(15)),
           ),
           ),
         ),
         SizedBox(height: 20),
         Container(
          width: 300,
          height: 60,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
          color: Color.fromARGB(255, 206, 89, 130).withOpacity(0.4),),
           child: TextFormField(
            onSaved: (newValue) {
             setState(() {
               password=newValue!;
             });
           },
           validator: (value)
            {
             if(value!.isEmpty)
             {
              return "Passsword cannot be empty";
             }
           },
           decoration: InputDecoration(label:Text('Password'),
           labelStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:20),
           contentPadding: EdgeInsets.all(10),
           border: UnderlineInputBorder(borderRadius: BorderRadius.circular(15)),
           ),
           
           ),
         ),
         SizedBox(height: 40,),
         ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor:Colors.purple.withOpacity(0.4),
          ),
          onPressed:()
         {
          if(_key.currentState!.validate())
          {
            _key.currentState!.save();
            bool isLoggedin =false;
            for(int i=0;i<allUsers.length;i++)
            {
            if(allUsers[i]['username']== username && allUsers[i]['password']==password)
              {
                isLoggedin=true;
              }
            }

            if(isLoggedin==true)
            {
              print('User Logged in successfuly!');
                // Navigator.push(context,MaterialPageRoute(builder: (context) => SecondPage()));
             
            }
            else{
              print('Logged in failed');
            }
             
           String userN=_usernameController.text;
            if(userN.isNotEmpty)
            {
               Navigator.push(context,MaterialPageRoute(builder: (context) => SecondPage(userN:userN)));
            }
          }
         },
          child: Text('Login',
          style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),)),
            ],
          ),
          ) ,
          ],
        ),
      ),
    );
   }
 }

 class SecondPage extends StatefulWidget
{
  final String userN;
  SecondPage({required this.userN});
  @override
  _secondpagestate createState() => _secondpagestate(); 
}
class _secondpagestate extends State<SecondPage>
{   
  
     @override
    
    Widget build(BuildContext context)
    {
      return Scaffold
      (
        backgroundColor: Color.fromARGB(255, 169, 205, 234),
        body:ListView(
          children: [
        Text('Hi, ${widget.userN} !',
        style: TextStyle(fontSize:30,color:Colors.white,fontWeight: FontWeight.bold),
        ),
        Text('Explore the world',
         style: TextStyle(fontSize:20,color:Colors.white,fontWeight: FontWeight.bold),),
        SizedBox(height: 50,),
         Neumorphic(
                    child: Container(
                      width: 300,
                      height: 400,
                      color: Colors.deepPurple.withOpacity(0.4),
                      child:Column(
                        children: [
                           Container(
                            margin: EdgeInsets.all(15),
                            child: Text('Fuji Mountain',style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.bold,fontSize:20),)),
                           Text('''
Mount Fuji is one of Japan's
"Three Holy Mountains" along
with Mount Tate and Mount Haku.
It is a Special Place of Scenic
Beauty and one of Japan's Historic
Sites.It was added to the World
Heritage List as a Cultural Site
on June 22, 2013.According to UNESCO,
Mount Fuji has "inspired artists and
poets and been the object of
pilgrimage for centuries".''',
                            style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.bold,fontSize:15)),   
                        ],
                      ),  
                    ),
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.all(20),  
                ),
 Neumorphic(
                  child:Container(
                    width: 300,
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Neumorphic(
                          margin: EdgeInsets.all(5),
                          child:CircleAvatar(
                            radius: 50,
                          backgroundImage:
                      NetworkImage('https://img.freepik.com/free-photo/fuji-mountain-cherry-blossoms-spring-japan_335224-181.jpg'),),
                        ),
                         Neumorphic(
                          margin: EdgeInsets.all(5),
                          child:CircleAvatar(
                            radius: 50,
                          backgroundImage:
                      NetworkImage('https://img.freepik.com/free-photo/fuji-mountain-cherry-blossoms-spring-japan_335224-227.jpg?size=626&ext=jpg&ga=GA1.1.2008272138.1724371200&semt=ais_hybrid'),),
                        ),
                         Neumorphic(
                          margin: EdgeInsets.all(5),
                          child:CircleAvatar(
                            radius: 50,
                          backgroundImage:
                      NetworkImage('https://e1.pxfuel.com/desktop-wallpaper/358/825/desktop-wallpaper-japan-landscape-mount-fuji-and-backgrounds-fuji-mountain-japan.jpg'),),
                        ),
                         Neumorphic(
                          margin: EdgeInsets.all(5),
                          child:CircleAvatar(
                            radius: 50,
                          backgroundImage:
                      NetworkImage('https://c4.wallpaperflare.com/wallpaper/92/6/338/autumn-leaves-trees-park-japan-hd-wallpaper-preview.jpg'),),
                        ),
                        Neumorphic(
                          margin: EdgeInsets.all(5),
                          child:CircleAvatar(
                            radius: 50,
                          backgroundImage:
                      NetworkImage('https://p4.wallpaperbetter.com/wallpaper/358/528/934/autumn-the-city-mountain-japan-wallpaper-preview.jpg'),),
                        ),
                        
                      ],
                    ),
                  ),
                ),
          ],
        )
      );
    }
}
