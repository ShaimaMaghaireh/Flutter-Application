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
          Navigator.push(context,MaterialPageRoute(builder: (context) => signUPpage()));
         },
                 child: Text('Sign up',style:TextStyle(fontSize:15,fontWeight: FontWeight.bold,color:Colors.black))),
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
      body:Container(
            decoration: BoxDecoration(
           image: DecorationImage(
          image:
               NetworkImage('https://w0.peakpx.com/wallpaper/488/951/HD-wallpaper-forest-mountain-bosque-destiny-game-land-landscape-lord-mountains-ring-rings.jpg'),
               fit: BoxFit.fill),
            ),
             child:
            ListView(
              children: [
                Center(
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white.withOpacity(0.7),
                    borderRadius:BorderRadius.circular(20)),
                    margin: EdgeInsets.only(top: 130),
                    width: 330,
                    height: 500,
                  child: Column(
                    children: [
                       SizedBox(height: 50,),
                 Text('Welcome Back!',
                 style: TextStyle(fontSize:30,fontWeight: FontWeight.bold,color: Colors.black),),
                 SizedBox(height: 20,),
                 Form(
            key: _key,
            child:Column(
        children: [
         Container(
         width: 300,
         height: 60,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
         color: Colors.green.withOpacity(0.4),),
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
          contentPadding: EdgeInsets.all(15),
          border: UnderlineInputBorder(borderRadius: BorderRadius.circular(50)),
           ),
           ),
         ),
         SizedBox(height: 20),
         Container(
         width: 300,
          height: 60,
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
         color: Colors.green.withOpacity(0.4),),
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
           decoration:InputDecoration(label:Text('Password'),
          labelStyle: TextStyle(color: Colors.white,
           fontWeight: FontWeight.bold,fontSize:20),
          contentPadding: EdgeInsets.all(15),
          border: UnderlineInputBorder(borderRadius: BorderRadius.circular(50)),
           ),
           
           ),
         ),
         SizedBox(height: 40,),
          SizedBox(
                  width: 300, 
                 height: 50, 
                 child: 
         ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor:Colors.white,
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
           child: Text('Log in',style:TextStyle(fontSize:15,fontWeight: FontWeight.bold,color:Colors.black)),
          )
          ),

          SizedBox(height: 10,),
                Container(
                  margin: EdgeInsets.only(left: 40),
                  child: Row(
                    children: [
                      Text(' Do not have an account?',style: TextStyle(fontWeight: FontWeight.bold),),
                      GestureDetector(child: Text('Sign up',style: TextStyle(fontWeight: FontWeight.bold)),
                      onTap: () {
                         Navigator.push(context,MaterialPageRoute(builder: (context) => signUPpage()));
                      },)
                    ],
                  ),
                )
            ],
          ),
          ) ,
                    ])
                    )
                )
              ]
      ),  
      ),  
      );
   }
 }

class signUPpage extends StatefulWidget
{
 @override
 State <signUPpage> createState() => _signUPpagestate();
}

 class  _signUPpagestate extends State <signUPpage>
 {
   final TextEditingController _usernameController = TextEditingController();
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
            child:
            ListView(
              children: [
                Center(
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white.withOpacity(0.7),
                    borderRadius:BorderRadius.circular(20)),
                    margin: EdgeInsets.only(top: 130),
                    width: 330,
                    height: 500,
                  child: Column(
                    children: [
                 SizedBox(height: 50,),
                 Text('Create Account',
                 style: TextStyle(fontSize:30,fontWeight: FontWeight.bold,color: Colors.black),),
                 SizedBox(height: 20,),
                    Container(
                    width: 300,
                    height: 60,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                    color: Colors.green.withOpacity(0.4),),
                     child: TextFormField(
                     controller: _usernameController,
                     decoration:InputDecoration(label:Text('Username'),
                     labelStyle: TextStyle(color: Colors.white,
                     fontWeight: FontWeight.bold,fontSize:20),
                     contentPadding: EdgeInsets.all(15),
                     border: UnderlineInputBorder(borderRadius: BorderRadius.circular(50)),
                    
                     ),
                     ),
                   ),
                     SizedBox(height: 20,),
                    Container(
                    width: 300,
                    height: 60,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                    color: Colors.green.withOpacity(0.4),),
                     child: TextFormField(
                     decoration:InputDecoration(label:Text('Email'),
                     labelStyle: TextStyle(color: Colors.white,
                     fontWeight: FontWeight.bold,fontSize:20),
                     contentPadding: EdgeInsets.all(15),
                     border: UnderlineInputBorder(borderRadius: BorderRadius.circular(50)),
                    
                     ),
                     ),
                   ),
                 SizedBox(height: 20,),
                    Container(
                    width: 300,
                    height: 60,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                    color: Colors.green.withOpacity(0.4),),
                     child: TextFormField(
                     decoration:InputDecoration(label:Text('Password'),
                     labelStyle: TextStyle(color: Colors.white,
                     fontWeight: FontWeight.bold,fontSize:20),
                     contentPadding: EdgeInsets.all(15),
                     border: UnderlineInputBorder(borderRadius: BorderRadius.circular(50)),
                    
                     ),
                     ),
                   ),
                   SizedBox(height: 20,),
                    SizedBox(
                  width: 300, 
                 height: 50, 
                 child: ElevatedButton(onPressed:(){
                  String userN=_usernameController.text;
                      if(userN.isNotEmpty)
                      {
                       Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage(userN:userN)));
                      }
                 },
                  child: Text('Sign up',style:TextStyle(fontSize:15,fontWeight: FontWeight.bold,color:Colors.black))),
                    ),
                SizedBox(height: 10,),
                Container(
                  margin: EdgeInsets.only(left: 80),
                  child: Row(
                    children: [
                      Text('Have an account?',style: TextStyle(fontWeight: FontWeight.bold),),
                      GestureDetector(child: Text('Log in',style: TextStyle(fontWeight: FontWeight.bold)),
                      onTap: () {
                         Navigator.push(context,MaterialPageRoute(builder: (context) => Loginpage()));
                      },)
                    ],
                  ),
                )
                    ],
                  ),
                  ),
                ),
              ],
            )
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
  Color _iconColor=Colors.grey;
  Color _iconColor1=Colors.grey;
  Color _iconColor2=Colors.grey;
  Color _iconColor3=Colors.grey;

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
     @override
    
    Widget build(BuildContext context)
    {
      return Scaffold
      (
        bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: IconButton(onPressed:(){
               Navigator.push(context,MaterialPageRoute(builder: (context) => Loginpage()));
            }, icon:Icon(Icons.favorite)),
            label: 'Favorite',
           
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
        body:ListView(
          children: [
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Text('Hi, ${widget.userN} !',
          style: TextStyle(fontSize:30,color:Colors.black,fontWeight: FontWeight.bold),
          ),
        ),
        Container(
           margin: EdgeInsets.only(left: 20),
          child: Text('Explore the world',
           style: TextStyle(fontSize:20,color:Colors.black,fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 50,),

       Container(
        margin: EdgeInsets.all(10),
         child: TextField(
           decoration: InputDecoration(
          hintText: 'Search places',
          border: OutlineInputBorder(
            borderRadius:  BorderRadius.all(
               Radius.circular(15.0),
            ),
            borderSide: BorderSide(
              color: Colors.black, width: 5.0,
            ),
          ),
               ),
             ),
       ),

       Container(
        margin: EdgeInsets.all(20),
         child: Row(
          children: [
          Text('Popular places',style:TextStyle(fontSize:15,color:Colors.black,fontWeight: FontWeight.bold),),
         
          Container(
            margin: EdgeInsets.only(left: 130),
            child: GestureDetector(
            child:Text('View all',style:TextStyle(color:Colors.grey,fontWeight: FontWeight.bold)),
            onTap: () {
              print('here is all places');
            },),
          ),
         
          ],
         ),
       ),

      Container(
        width: 300,height: 100,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    print('object');
               setState(() {
              _iconColor= _iconColor==Colors.grey ?Colors.black:Colors.grey;
                });
                  },
                  child:
                Container(
                  margin: EdgeInsets.only(left: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: _iconColor,),
                  width: 120,height:50,
                  child: Text('Most Viewed',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),),),
          
           GestureDetector(
                  onTap: () {
                    print('object');
               setState(() {
              _iconColor1= _iconColor1==Colors.grey ?Colors.black:Colors.grey;
                });
                  },
                  child:
                Container(
                  margin: EdgeInsets.only(left: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: _iconColor1,),
                  width: 120,height:50,
                  child: Text('Most Viewed',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),),),
               GestureDetector(
                  onTap: () {
                    print('object');
               setState(() {
              _iconColor2= _iconColor2==Colors.grey ?Colors.black:Colors.grey;
                });
                  },
                  child:
                Container(
                  margin: EdgeInsets.only(left: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: _iconColor2,),
                  width: 120,height:50,
                  child: Text('Most Viewed',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),),),
               
               GestureDetector(
                  onTap: () {
                    print('object');
               setState(() {
              _iconColor3= _iconColor3==Colors.grey ?Colors.black:Colors.grey;
                });
                  },
                  child:
                Container(
                  margin: EdgeInsets.only(left: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: _iconColor3,),
                  width: 120,height:50,
                  child: Text('Most Viewed',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),),),

              ],
            )
          ],
        ),
      ),
      Container(
        width: 300,height: 500,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Row(children: [
           GestureDetector(
            onDoubleTap: () {
              print('fuji');
            },
             child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child:Stack(
                children: [
              Image.network(
              'https://images.fineartamerica.com/images/artworkimages/mediumlarge/2/view-of-mount-fuji-with-cherry-blossom-tanatat-pongphibool-thailand.jpg',
              fit: BoxFit.fill,width:320,height: 400,
              ),
              Positioned(child:IconButton(
                 style: IconButton.styleFrom(backgroundColor: Colors.grey.withOpacity(0.4)),
                onPressed: (){}, 
              icon:Icon(Icons.favorite_border_outlined),iconSize:35,color:Colors.white,),
              left: 250,top: 16,
              ),
              Positioned(
                top: 250,
                child: Container(
                 padding: EdgeInsets.all(15),
                width:250,height:100,margin: EdgeInsets.all(30),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color:const Color.fromARGB(255, 19, 96, 134).withOpacity(0.8)),
                child:Column(children: [
                  Row(children: [Text('Mount Fuji',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                  ],),
                  SizedBox(height: 10,),
                  Row(children: [Icon(Icons.location_on_outlined,color: Colors.white,),
                  SizedBox(width: 20,),Text('Japan,Tokyo',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
                   SizedBox(width: 20,),Icon(Icons.star_border_outlined,color: Colors.white,),
                   Text('4.9',style: TextStyle(color:Colors.white,fontSize:15))],)
                ],), )) ],),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              elevation: 5,margin: EdgeInsets.all(10),
             ),),

              GestureDetector(
            onDoubleTap: () {
              print('fuji');
            },
             child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child:Stack(
                children: [
              Image.network(
              'https://peakvisor.com/photo/chimborazo.jpg',
              fit: BoxFit.fill,width:320,height: 400,
              ),
              Positioned(child:IconButton(
                 style: IconButton.styleFrom(backgroundColor: Colors.grey.withOpacity(0.4)),
                onPressed: (){}, 
              icon:Icon(Icons.favorite_border_outlined),iconSize:35,color:Colors.white,),
              left: 250,top: 16,
              ),
              Positioned(
                top: 250,
                child: Container(
                 padding: EdgeInsets.all(15),
                width:250,height:100,margin: EdgeInsets.all(30),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color:const Color.fromARGB(255, 19, 96, 134).withOpacity(0.8)),
                child:Column(children: [
                  Row(children: [Text('Andes Mountains',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                  ],),
                  SizedBox(height: 10,),
                  Row(children: [Icon(Icons.location_on_outlined,color: Colors.white,),
                  SizedBox(width: 20,),Text('South America',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
                   SizedBox(width: 10,),Icon(Icons.star_border_outlined,color: Colors.white,),
                   Text('4.9',style: TextStyle(color:Colors.white,fontSize:15))],)
                ],), )) ],),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              elevation: 5,margin: EdgeInsets.all(10),
             ),),
              GestureDetector(
            onDoubleTap: () {
              print('fuji');
            },
             child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child:Stack(
                children: [
              Image.network(
              'https://static.toiimg.com/photo/108206552/108206552.jpg',
              fit: BoxFit.fill,width:320,height: 400,
              ),
              Positioned(child:IconButton(
                 style: IconButton.styleFrom(backgroundColor: Colors.grey.withOpacity(0.4)),
                onPressed: (){}, 
              icon:Icon(Icons.favorite_border_outlined),iconSize:35,color:Colors.white,),
              left: 250,top: 16,
              ),
              Positioned(
                top: 250,
                child: Container(
                 padding: EdgeInsets.all(15),
                width:250,height:100,margin: EdgeInsets.all(30),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color:const Color.fromARGB(255, 19, 96, 134).withOpacity(0.8)),
                child:Column(children: [
                  Row(children: [Text('Alps',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                  ],),
                  SizedBox(height: 10,),
                  Row(children: [Icon(Icons.location_on_outlined,color: Colors.white,),
                  SizedBox(width: 20,),Text('Switzerland',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
                   SizedBox(width: 20,),Icon(Icons.star_border_outlined,color: Colors.white,),
                   Text('4.9',style: TextStyle(color:Colors.white,fontSize:15))],)
                ],), )) ],),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              elevation: 5,margin: EdgeInsets.all(10),
             ),),
              GestureDetector(
            onDoubleTap: () {
              print('fuji');
            },
             child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child:Stack(
                children: [
              Image.network(
              'https://i.redd.it/77t86nlexij91.jpg',
              fit: BoxFit.fill,width:320,height: 400,
              ),
              Positioned(child:IconButton(
                 style: IconButton.styleFrom(backgroundColor: Colors.grey.withOpacity(0.4)),
                onPressed: (){}, 
              icon:Icon(Icons.favorite_border_outlined),iconSize:35,color:Colors.white,),
              left: 250,top: 16,
              ),
              Positioned(
                top: 250,
                child: Container(
                 padding: EdgeInsets.all(15),
                width:250,height:100,margin: EdgeInsets.all(30),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color:const Color.fromARGB(255, 19, 96, 134).withOpacity(0.8)),
                child:Column(children: [
                  Row(children: [Text('Mount Kilimanjaro',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                  ],),
                  SizedBox(height: 10,),
                  Row(children: [Icon(Icons.location_on_outlined,color: Colors.white,),
                  SizedBox(width: 20,),Text('Tanzania',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
                   SizedBox(width: 20,),Icon(Icons.star_border_outlined,color: Colors.white,),
                   Text('4.9',style: TextStyle(color:Colors.white,fontSize:15))],)
                ],), )) ],),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              elevation: 5,margin: EdgeInsets.all(10),
             ),),
              GestureDetector(
            onDoubleTap: () {
              print('fuji');
            },
             child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child:Stack(
                children: [
              Image.network(
              'https://i.pinimg.com/736x/e5/e2/b8/e5e2b898590e40c13d3ebfeee047aebe.jpg',
              fit: BoxFit.fill,width:320,height: 400,
              ),
              Positioned(child:IconButton(
                 style: IconButton.styleFrom(backgroundColor: Colors.grey.withOpacity(0.4)),
                onPressed: (){}, 
              icon:Icon(Icons.favorite_border_outlined),iconSize:35,color:Colors.white,),
              left: 250,top: 16,
              ),
              Positioned(
                top: 250,
                child: Container(
                 padding: EdgeInsets.all(15),
                width:250,height:100,margin: EdgeInsets.all(30),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color:const Color.fromARGB(255, 19, 96, 134).withOpacity(0.8)),
                child:Column(children: [
                  Row(children: [Text('Mount Fuji,',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                  Text('Tokyo',style: TextStyle(color:Colors.white),)
                  ],),
                  SizedBox(height: 10,),
                  Row(children: [Icon(Icons.location_on_outlined,color: Colors.white,),
                  SizedBox(width: 20,),Text('Japan,Tokyo',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
                   SizedBox(width: 20,),Icon(Icons.star_border_outlined,color: Colors.white,),
                   Text('4.9',style: TextStyle(color:Colors.white,fontSize:15))],)
                ],), )) ],),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              elevation: 5,margin: EdgeInsets.all(10),
             ),),
             
             ],
            ),

          ],
        ),
      ),

      
      
       

          ],
        )
      );
    }
}
