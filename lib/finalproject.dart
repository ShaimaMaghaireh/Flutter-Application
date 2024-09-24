import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'morepages.dart';
import 'bottomnavigatpages.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animate_do/animate_do.dart';
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
      routes:{
        '/morepages':(context) => MostViewedPage(),
         '/morepages':(context) => LatestaddPage(),
          '/morepages':(context) => NearbyPage(),
           '/morepages':(context) => RecomendedPage(),
      },
    );
  }
}

// class newpage extends StatefulWidget
// {

//  @override
//  State <newpage> createState() => _newpagestate();
// }

// class  _newpagestate extends State <newpage>
// {
//   @override
//   Widget build(BuildContext context)
//   {
//     return Scaffold(
//       appBar: AppBar(title: Text('Responsive'),),
//       body: LayoutBuilder(
//         builder:(context,Constraints)
//         {
//           if(Constraints.maxWidth>1200)
//           {
//             // return DesktopLayout();
//           }

//           else if(Constraints.maxWidth<=1200 && Constraints.maxWidth>=800)
//            {
//           //   return TabletLayout();
//           }
//           else
//           {
//             return firstpage();
//           }

        
//         },
//     ),
//     );
//   }
// }

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
              margin:EdgeInsets.only(top: 200,left: 40),
              child: Row(
               children: [
              Container(
              child:
               AnimatedTextKit(
                totalRepeatCount: 1,
      animatedTexts: [
         TyperAnimatedText('Road Compass',textStyle: TextStyle(color:Colors.white,fontSize:30,
              fontWeight: FontWeight.bold),speed: Duration(milliseconds: 400)),
      ],
      onTap: () {
        print("Tap Event");
      },
    ),
              //  Text('Road Compass',style: TextStyle(color:Colors.white,fontSize:30,
              // fontWeight: FontWeight.bold),)
              ),
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
                  Text('Find Your Dream',style:GoogleFonts.alegreya( textStyle:  TextStyle(color:Colors.white,fontSize:25,
              fontWeight: FontWeight.bold)),),
                  Text('Destination With Us',style: GoogleFonts.alegreya(textStyle:TextStyle(color:Colors.white,fontSize:25,
              fontWeight: FontWeight.bold)), )
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
                Text('Go ahead.',style:GoogleFonts.alegreya(textStyle:TextStyle(fontSize:25,fontWeight: FontWeight.bold)),),
                Text('You deserve it!',style:GoogleFonts.alegreya(textStyle:TextStyle(fontSize:25,fontWeight: FontWeight.bold))),
                 
                  SizedBox(height: 50,),
                SizedBox(
            width: 200, // <-- Your width
             height: 50, // <-- Your height
            child: ElevatedButton(onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder: (context) => Loginpage()));
            },
                 child: Text('Log in',style:GoogleFonts.alegreya
                 (textStyle: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color:Colors.black)))),
             ),
              
              SizedBox(height: 15,),
          SizedBox(
          width: 200, // <-- Your width
         height: 50, // <-- Your height
         child: ElevatedButton(onPressed:(){
          Navigator.push(context,MaterialPageRoute(builder: (context) => signUPpage()));
         },
                 child: Text('Sign up',style:GoogleFonts.alegreya
                 (textStyle: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color:Colors.black)))),
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
                 style:GoogleFonts.alegreya(textStyle:TextStyle(fontSize:30,fontWeight: FontWeight.bold,color: Colors.black) )),
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
           decoration:InputDecoration(label:Text('Username',style:GoogleFonts.alegreya(textStyle:TextStyle(color: Colors.white,
           fontWeight: FontWeight.bold,fontSize:20)),),
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
           decoration:InputDecoration(label:Text('Password',style:GoogleFonts.alegreya(textStyle:TextStyle(color: Colors.white,
           fontWeight: FontWeight.bold,fontSize:20))),
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
           child: Text('Log in',style:GoogleFonts.alegreya
           (textStyle:TextStyle(fontSize:18,fontWeight: FontWeight.bold,color:Colors.black) )
           ),
          )
          ),

          SizedBox(height: 10,),
                Container(
                  margin: EdgeInsets.only(left: 40),
                  child: Row(
                    children: [
                      Text(' Do not have an account?',style:GoogleFonts.alegreya(textStyle:TextStyle(fontWeight: FontWeight.bold)) ,),
                      GestureDetector(child: Text('Sign up',style: GoogleFonts.alegreya(textStyle:TextStyle(fontWeight: FontWeight.bold))),
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
                 style: GoogleFonts.alegreya(textStyle:TextStyle(fontSize:30,fontWeight: FontWeight.bold,color: Colors.black)),),
                 SizedBox(height: 20,),
                    Container(
                    width: 300,
                    height: 60,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                    color: Colors.green.withOpacity(0.4),),
                     child: TextFormField(
                     controller: _usernameController,
                     decoration:InputDecoration(label:Text('Username',
                     style:GoogleFonts.alegreya(textStyle:TextStyle(color: Colors.white,
                     fontWeight: FontWeight.bold,fontSize:20) )),
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
                     decoration:InputDecoration(label:Text('Email',style:GoogleFonts.alegreya(textStyle:TextStyle(color: Colors.white,
                     fontWeight: FontWeight.bold,fontSize:20) )),
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
                     decoration:InputDecoration(label:Text('Password',style:GoogleFonts.alegreya(textStyle:TextStyle(color: Colors.white,
                     fontWeight: FontWeight.bold,fontSize:20) )),
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
                  child: Text('Sign up',style:GoogleFonts.alegreya(textStyle:TextStyle(fontSize:15,fontWeight: FontWeight.bold,color:Colors.black)))),
                    ),
                SizedBox(height: 10,),
                Container(
                  margin: EdgeInsets.only(left: 80),
                  child: Row(
                    children: [
                      Text('Have an account?',style:GoogleFonts.alegreya(textStyle: TextStyle(fontWeight: FontWeight.bold),)),
                      GestureDetector(child: Text('Log in',style:GoogleFonts.alegreya(textStyle: TextStyle(fontWeight: FontWeight.bold))),
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

Map places=
{
'Mount Fuji':{'title':'Mount Fuji','location':'Japan,Tokyo','image':'https://images.fineartamerica.com/images/artworkimages/mediumlarge/2/view-of-mount-fuji-with-cherry-blossom-tanatat-pongphibool-thailand.jpg'},
'Jerash':{'title':'Jerash','location':'Jordan,Jerash','image':'https://i.redd.it/qb3w3oiugxz61.jpg'},
'Petra':{'title':'Petra','location':'Jordan,Maan','image':'https://miro.medium.com/v2/resize:fit:600/1*Daqq1UKZnIul_LG9-qst3A.png'},
'Ajloun':{'title':'Ajloun Castle','location':'Jordan,Ajloun','image':'https://jordantimes.com/sites/default/files/styles/news_inner/public/2ajloun-castle.jpg?itok=V784M1a0'},
'Karak':{'title':'Karak Castle','location':'Jordan,Karak','image':'https://www.mediastorehouse.com.au/p/251/kerak-castle-al-karak-karak-governorate-jordan-19383355.jpg.webp'},
'Mount Denali':{'title':'Mount Denali','location':'America,Alaska','image':'https://images.memphistours.com/large/736049c384b153a5639e0ecffecfb2d5.jpg'},
'Alps':{'title':'Alps','location':'Switzerland','image':'https://static.toiimg.com/photo/108206552/108206552.jpg'},
'Mount Kilimanjaro':{'title':'Mount Kilimanjaro','location':'Tanzania','image':'https://i.redd.it/77t86nlexij91.jpg'},
'Atlas Mountain':{'title':'Atlas Mountain','location':'Moroco','image':'https://cdn.sanity.io/images/oyzyxja8/v2/32f40a1e755df0db8b71ee649e854fa807662386-1700x2000.jpg?w=2048&q=90&auto=format'},
'Eiffel Tower':{'title':'Eiffel Tower','location':'France,Paris','image':'https://storage.googleapis.com/pod_public/1300/174593.jpg'},
'The Leaning Tower of Pizza':{'title':'The Leaning Tower of Pizza','location':'Italy,Toscana','image':'https://i.pinimg.com/736x/3b/53/85/3b53854207eee71d4c6b94765e8674d5.jpg'},
'Alhambra Palace':{'title':'Alhambra Palace','location':'Spain,Granada','image':'https://lp-cms-production.imgix.net/2023-07/shutterstockRF582611728.jpg?fit=crop&ar=1%3A1&w=1200&auto=format&q=75'},
'Big Ben Clock':{'title':'Big Ben Clock','location':'United Kingdom','image':'https://a.storyblok.com/f/53624/2400x3600/9907b23a27/street-level-view-of-big-ben.jpg/m/'},
'Great Wall Of China':{'title':'Great Wall Of China','location':'China,Beijing','image':'https://w0.peakpx.com/wallpaper/27/882/HD-wallpaper-great-wall-china-mutianyu.jpg'},
'Andes Mountains':{'title':'Andes Mountains','location':'South America','image':'https://peakvisor.com/photo/chimborazo.jpg'},
'Trabzon':{'title':'Trabzon','location':'Turky,Trabzon','image':'https://pbs.twimg.com/media/E8NChVAWUAcgc2v.jpg:large'},
'Santorini Island':{'title':'Santorini Island','location':'Greece','image':'https://i.pinimg.com/originals/22/9b/05/229b055491ab1fa3f2fe58a066e96e82.jpg'},
'Taj Mahal':{'title':'Taj Mahal','location':'India,Agra','image':'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/Monument_wiecznej_milosci-Taj_Mahal_Agra_-_panoramio.jpg/640px-Monument_wiecznej_milosci-Taj_Mahal_Agra_-_panoramio.jpg'},
'Gyeongbokgung Palace':{'title':'Gyeongbokgung Palace','location':'South Korea,Seoul','image':'https://pbs.twimg.com/media/D4eghs5UIAEIMZO?format=jpg&name=large'},
'Pyramids of Giza':{'title':'Pyramid of Giza','location':'Egypt,Cairo','image':'https://i.natgeofe.com/n/535f3cba-f8bb-4df2-b0c5-aaca16e9ff31/giza-plateau-pyramids_2x3.jpg'},
'Jadara':{'title':'Jadara(Umm Qais)','location':'Jordan,Irbid','image':'https://media-cdn.tripadvisor.com/media/attractions-splice-spp-720x480/11/5b/b8/2d.jpg'}
};

final GlobalKey <FormState> _key=GlobalKey();
List  foundedresult=[]; 
List result=[];

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
  bool isFavorite = false;
  bool isBooked=false;
  int selectedIndex = 0;
     @override
    
    Widget build(BuildContext context)
    {
      return Scaffold
      (
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.blue,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: IconButton(onPressed:(){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ScedulesPage(isBooked: isBooked,),
                ),
              );
            },icon: Icon(Icons.schedule),),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: IconButton(onPressed:(){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FavoritesPage(isFavorite: isFavorite),
                ),
              );
            }, icon:Icon(Icons.favorite)),
            label: 'Favorite', 
          ),

           BottomNavigationBarItem(
            icon: IconButton(onPressed:(){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfilePage(),
                ),
              );
            }, icon:Icon(Icons.person_4_rounded)),
            label: 'Profile', 
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
          child: Text('Hi, ${widget.userN}👋!',
          style:GoogleFonts.alegreya(textStyle: TextStyle(fontSize:30,color:Colors.black,fontWeight: FontWeight.bold),
          )),
        ),
        Container(
           margin: EdgeInsets.only(left: 20),
          child: Text('Explore the world',
           style:GoogleFonts.alegreya(textStyle: TextStyle(fontSize:20,color:Colors.black,fontWeight: FontWeight.bold),)),
        ),
        SizedBox(height: 30,),

       Container(
        margin: EdgeInsets.all(10),
         child: TextField(
          onChanged: (x) {
            List productList=places.keys.toList();
             List result=[];
              bool found=false;
              for(var i=0;i<productList.length;i++)
              {
                if(productList[i].contains(x))
                {
                  result.add(places[productList[i]]);
                  found=true;
                }
              }
              if(found==false)
              {
                result=[];
                print('not found');
              }

              setState(() {
              foundedresult=result;
               result=places.keys.toList();
              });   
          },
           decoration: InputDecoration(
          hintText: 'Search places',
          border: OutlineInputBorder(
            borderRadius:  BorderRadius.all(
               Radius.circular(15.0),
            ),
            borderSide: BorderSide(
              color: Colors.blue, width: 5.0,
            ), ),
               ), ),),
            if(foundedresult.isNotEmpty)
                 SizedBox(
                  width: 100,height: 50,
                   child: ElevatedButton(
                    onPressed: ()
                   {
                    setState(() {
                      foundedresult.clear();
                    });
                   }, child:Text('Hide Results',style:TextStyle(color:Colors.black),)),
                 ),
       !foundedresult.isEmpty ? Container(
                  width: 300,height:500,
                  child:ListView.builder(
                  itemCount: foundedresult.length,
                 itemBuilder:(context, index)
                    {
               return Column(
                children: [
                 GestureDetector(
            onDoubleTap: () {
            },
             child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child:Stack(
                children: [
              Image.network(
             foundedresult[index]['image'],
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
                  Row(children: [Text(foundedresult[index]['title'],style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                  ],),
                  SizedBox(height: 10,),
                  Row(children: [Icon(Icons.location_on_outlined,color: Colors.white,),
                  SizedBox(width: 20,),Text(foundedresult[index]['location'],style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
                   SizedBox(width: 20,),Icon(Icons.star_border_outlined,color: Colors.white,),
                   Text('4.9',style: TextStyle(color:Colors.white,fontSize:15))],)
                ],), )) ],),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              elevation: 5,margin: EdgeInsets.all(10),shadowColor: Color.fromARGB(255, 37, 0, 158),
             ),),
                          ],
                        );
                    }),
                ): Text('Nothig Found!',style:GoogleFonts.alegreya
                (textStyle:TextStyle(fontWeight: FontWeight.bold),)),

      Container(
        width: 300,height: 100,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Row(
              children: [
                 SizedBox(width: 20,),
               TextButton(
                  onPressed: () {
                     Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MostViewedPage(),
                ),
              );
                    setState(() {
                      selectedIndex = 0;
                    });
                  },
                  style: TextButton.styleFrom(
                    backgroundColor:
                        selectedIndex == 0 ? Colors.black : Colors.grey[300],
                  ),
                  child: Text(
                    'Most Viewed',
                    style: GoogleFonts.aladin(textStyle:TextStyle(
                      color: selectedIndex == 0 ? Colors.white : Colors.black,fontSize:20
                    ), )
                  ),
                ),
                SizedBox(width: 30,),
                TextButton(
                  onPressed: () {
                     Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NearbyPage(),
                ),
              );
                    setState(() {
                      selectedIndex = 1;
                    });
                  },
                  style: TextButton.styleFrom(
                    backgroundColor:
                        selectedIndex == 1 ? Colors.black : Colors.grey[300],
                  ),
                  child: Text(
                    'Nearby',
                    style: GoogleFonts.aladin(textStyle: 
                    TextStyle(
                      color: selectedIndex == 1 ? Colors.white : Colors.black,fontSize:20
                    ),
                  )),
                ),
                 SizedBox(width: 30,),
                TextButton(
                  onPressed: () {
                     Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LatestaddPage(),
                ),
              );
                    setState(() {
                      selectedIndex = 2;
                    });
                  },
                  style: TextButton.styleFrom(
                    backgroundColor:
                        selectedIndex == 2 ? Colors.black : Colors.grey[300],
                  ),
                  child: Text(
                    'Latest',
                    style:
                    GoogleFonts.aladin(textStyle: TextStyle(
                      color: selectedIndex == 2 ? Colors.white : Colors.black,fontSize:20
                    ),
                  )),
                ),
                 SizedBox(width: 30,),
                TextButton(
                  onPressed: () {
                 Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MostViewedPage(),
                ),
              );
                    setState(() {
                      selectedIndex = 3;
                    });
                  },
                  style: TextButton.styleFrom(
                    backgroundColor:
                        selectedIndex == 3 ? Colors.black : Colors.grey[300],
                  ),
                  child: Text(
                    'Recomended',
                    style:GoogleFonts.aladin(textStyle: TextStyle(
                      color: selectedIndex == 3 ? Colors.white : Colors.black,fontSize:20
                    ),
                  )),
                ),
              ],
            )
          ],
        ),
      ),
      
        Container(
          margin: EdgeInsets.only(left: 20),
         child:
          Text('Popular places',style:GoogleFonts.alegreya(textStyle: TextStyle(fontSize:25,color:Colors.black,fontWeight: FontWeight.bold)),),
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
                onPressed: (){
                setState(() {
                  isFavorite = !isFavorite;
                });
                }, 
              icon:Icon(isFavorite ? Icons.favorite : Icons.favorite_border,
              color: isFavorite ? Colors.red : null,),
              iconSize:35,color:Colors.white,),
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
              elevation: 5,margin: EdgeInsets.all(10),shadowColor: Color.fromARGB(255, 37, 0, 158),
             ),
             ),

              GestureDetector(
            onDoubleTap: () {},
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
              elevation: 5,margin: EdgeInsets.all(10),shadowColor: Color.fromARGB(255, 37, 0, 158),
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
              elevation: 5,margin: EdgeInsets.all(10),shadowColor: Color.fromARGB(255, 37, 0, 158),
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
              elevation: 5,margin: EdgeInsets.all(10),shadowColor: Color.fromARGB(255, 37, 0, 158),
             ),),
              GestureDetector(
            onDoubleTap: () {
             Navigator.push(context, MaterialPageRoute(builder: (context) => InformationPage()));
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
                  Row(children: [Text('Himilaya Mountains,Asia',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                  Text('',style: TextStyle(color:Colors.white),)
                  ],),
                  SizedBox(height: 10,),
                  Row(children: [Icon(Icons.location_on_outlined,color: Colors.white,),
                  SizedBox(width: 20,),Text('Chaina',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
                   SizedBox(width: 20,),Icon(Icons.star_border_outlined,color: Colors.white,),
                   Text('4.9',style: TextStyle(color:Colors.white,fontSize:15))],)
                ],), )) ],),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              elevation: 5,margin: EdgeInsets.all(10),shadowColor: Color.fromARGB(255, 37, 0, 158),
             ),),
              ],),
          ],
        ),
      ),
      
       Container(
          margin: EdgeInsets.only(left: 20),
         child:
          Text('Best Services',style:GoogleFonts.alegreya(textStyle: TextStyle(fontSize:25,color:Colors.black,fontWeight: FontWeight.bold)),),
          ),
      SizedBox(height: 20,),
       Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              FadeInLeft(child: Container(width: 80,height: 80,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:const Color.fromARGB(255, 150, 183, 239)),
              child:Image.network('https://cdn-icons-png.flaticon.com/512/2134/2134439.png',width:50,height: 50,),)),
              FadeInUp(child: Container(width: 80,height: 80,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:const Color.fromARGB(255, 150, 183, 239)),
              child:Image.network('https://cdn-icons-png.flaticon.com/512/2036/2036899.png',width:50,height: 50,),)),
              FadeInDown(child: Container(width: 80,height: 80,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:const Color.fromARGB(255, 150, 183, 239)),
              child:Image.network('https://cdn-icons-png.flaticon.com/512/620/620686.png',width:50,height: 50,),)),
              FadeInRight(child: Container(width: 80,height: 80,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:const Color.fromARGB(255, 150, 183, 239)),
              child:Image.network('https://cdn-icons-png.flaticon.com/512/6554/6554023.png',width:50,height: 50,),)),
            ],
          ),
          ],
        )
      );
    }
}

class Square extends StatelessWidget {
  const Square({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      color: Colors.blueAccent,
    );
  }
}

class InformationPage extends StatefulWidget
{
  @override
  State <InformationPage> createState() => _InformationPagestate(); 
}
class _InformationPagestate extends State<InformationPage>
{
   @override
   Widget build(BuildContext context)
   {
    return Scaffold(
      appBar: AppBar(title:Text('Information Page'),),
      body:Center(child:ListView(
        children: [
          Center(
            child: Container(
              width:300,height:800,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color:Color.fromARGB(255, 159, 189, 229).withOpacity(0.7)),
              child: Stack(
               children: [
                 Positioned(child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child:Stack(
                children: [
              Image.network(
              'https://i.pinimg.com/736x/e5/e2/b8/e5e2b898590e40c13d3ebfeee047aebe.jpg',
              fit: BoxFit.fill,width:300,height: 300,
              ),
              Positioned(child:IconButton(
                 style: IconButton.styleFrom(backgroundColor: Colors.grey.withOpacity(0.4)),
                onPressed: (){
                  Navigator.pop(context);
                }, 
              icon:Icon(Icons.arrow_back_ios_outlined),iconSize:25,color:Colors.white,),
              left: 15,
              top: 16,
              ),
              Positioned(
                top: 150,
                child: Container(
                 padding: EdgeInsets.all(15),
                width:250,height:100,margin: EdgeInsets.only(left:15,top:28),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color:const Color.fromARGB(255, 19, 96, 134).withOpacity(0.8)),
                child:Column(children: [
                  Row(children: [Text('Himilaya Mountains,Asia',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                  Text('',style: TextStyle(color:Colors.white),)
                  ],),
                  SizedBox(height: 10,),
                  Row(children: [Icon(Icons.location_on_outlined,color: Colors.white,),
                  SizedBox(width: 20,),Text('China',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
                   SizedBox(width: 20,),Icon(Icons.attach_money,color: Colors.white,),
                   Text('300',style: TextStyle(color:Colors.white,fontSize:15))],)
                ],), )) ],),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              elevation: 5,margin: EdgeInsets.all(10),shadowColor: Color.fromARGB(255, 37, 0, 158),
             ),
             ),

             Positioned(
              left:11,top:330,
              child:Container(
              decoration:BoxDecoration(borderRadius: BorderRadius.circular(15),
              color: Colors.transparent
              ),
              width:280,height: 400,
              child:Column(children:
               [
                Row(children: [ SizedBox (width: 10,) 
                ,Text('Overview',style:TextStyle(fontSize:20,fontWeight: FontWeight.bold),)],),
                 SizedBox (height: 10,),
                Row(children: [
                 SizedBox (width: 10,),Icon(Icons.schedule),Text(' 8 hours',style:TextStyle(fontWeight: FontWeight.bold)),
                 SizedBox (width: 20,),Icon(Icons.cloud),Text(' −8°C',style:TextStyle(fontWeight: FontWeight.bold)),
                 SizedBox (width: 20,),Icon(Icons.star),Text(' 4.5',style:TextStyle(fontWeight: FontWeight.bold)),
                 ],),
                  SizedBox (height: 20,),
                  Text("""
The Himalayas,or Himalaya
is a mountain range in Asia
separating the plains of the
Indian subcontinent from the
Tibetan Plateau.The range 
has some of the Earth's 
highest peaks, including
the highest, Mount Everest.
More than 100 peaks exceeding 
elevations of 7,200m above
sea level lie in the Himalayas.
""",style:TextStyle(fontWeight: FontWeight.bold,fontSize:15)),
               ],),
             )),
             Positioned(
              top: 700,left:50,
              child: SizedBox(
                width:200,
              child:ElevatedButton(
              onPressed:(){}, child:Text('Book Now',
              style:TextStyle(fontWeight: FontWeight.bold,fontSize:15,color:Colors.black))),))
                ],
              ),
            ),
          )
        ],
      ),)
    );
   }
}


