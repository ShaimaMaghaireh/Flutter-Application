import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
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
  @override
   Widget build(BuildContext context)
   {
    return Scaffold(
      extendBody: true,
      body: Container(
        width:500 ,
     decoration: BoxDecoration
     (
     image: DecorationImage(
      opacity: 0.9,
      image:
     NetworkImage('https://w0.peakpx.com/wallpaper/32/508/HD-wallpaper-river-between-trees.jpg'),
     fit: BoxFit.fill),
     ),
        child: Center(
          child: Column(
            children: [
            Container(
              margin:EdgeInsets.only(top: 200,left: 100),
              child: Row(
               children: [
              Container(
              child: Text('Travel',style: TextStyle(color:Colors.white,fontSize:40,
              fontWeight: FontWeight.bold),)),
              Container(
                margin: EdgeInsets.only(left:10),
                child: Image.network('https://cdn-icons-png.flaticon.com/512/340/340779.png',
                width: 40,height: 40,color:Colors.white),
              )],
             ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Text('Find Your Dream',style: TextStyle(color:Colors.white,fontSize:20,
              fontWeight: FontWeight.bold)),
                  Text('Destination With Us',style: TextStyle(color:Colors.white,fontSize:20,
              fontWeight: FontWeight.bold))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 250,left:250),
              child: IconButton(
              onPressed: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context) => LogChoicepage()));
              },
              icon: Icon(Icons.arrow_forward_sharp,size:40,color:Colors.white,)),
            )
              
            ],
          ),
        ),
      ),
      
    );
   }
 }

 class LogChoicepage extends StatefulWidget
{
 @override
 State <LogChoicepage> createState() => _LogChoicepagestate();
}

class   _LogChoicepagestate extends State <LogChoicepage>
{
   @override
   Widget build(BuildContext context)
   {
    return Scaffold(
      extendBody: true,
      body:Container(
        decoration: BoxDecoration(
       image: DecorationImage(
      image:
     NetworkImage('https://w0.peakpx.com/wallpaper/488/951/HD-wallpaper-forest-mountain-bosque-destiny-game-land-landscape-lord-mountains-ring-rings.jpg'),
     fit: BoxFit.fill),
        ),
        child: Center(
          child: Container(
            margin: EdgeInsets.only(top:50),
            width: 300,
            height: 400,
            decoration: BoxDecoration(
              color:Colors.white.withOpacity(0.6),
              borderRadius: BorderRadius.circular(20)
            ),
            child: Column(
              children: [
                 SizedBox(height: 50,),
                Text('Go ahead.',style:TextStyle(fontSize:15,fontWeight: FontWeight.bold),),
                Text('You deserve it!',style:TextStyle(fontSize:15,fontWeight: FontWeight.bold)),
                 
                  SizedBox(height: 50,),
                SizedBox(
            width: 200, // <-- Your width
             height: 50, // <-- Your height
            child: ElevatedButton(onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder: (context) => Loginpage()));
            },
                 child: Text('Log in',style:TextStyle(fontSize:15,fontWeight: FontWeight.bold,color:Colors.black))),
             ),
              
              SizedBox(height: 15,),
          SizedBox(
          width: 200, // <-- Your width
         height: 50, // <-- Your height
         child: ElevatedButton(onPressed:(){
          Navigator.push(context,MaterialPageRoute(builder: (context) => Loginpage()));
         },
                 child: Text('Sign in',style:TextStyle(fontSize:15,fontWeight: FontWeight.bold,color:Colors.black))),
),
              ],
            ),
          )
        ),
      ),
    );
   }
}





 class Loginpage extends StatefulWidget
{
 @override
 State <Loginpage> createState() => _Loginpagestate();
}

 class  _Loginpagestate extends State <Loginpage>
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
      extendBody: true,
      // backgroundColor: Color.fromARGB(255, 134, 185, 227),
      body: Container(
        decoration: BoxDecoration(
           image: DecorationImage(
      // opacity: 0.9,
      image:
     NetworkImage('https://i.pinimg.com/736x/16/a1/2f/16a12ff0bbe66dde1b00a5ccf71ad9a2.jpg'),
     fit: BoxFit.fill),
        ),
        child: Center(
        child: ListView(
         children: [
           SizedBox(width: 100,height: 100,),
        //  Image.network('https://cdn-icons-png.flaticon.com/512/6554/6554215.png',width: 200,height: 200,),
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
               Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage(userN:userN)));
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
      ),
    );
   }
 }

 class HomePage extends StatefulWidget
{
  final String userN;
  HomePage({required this.userN});
  @override
  State <HomePage> createState() => _HomePagestate(); 
}
class _HomePagestate extends State<HomePage>
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
       

          ],
        )
      );
    }
}
