import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
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
   int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

   @override
  Widget build(BuildContext context)
  {
    return Scaffold(
     extendBody: true,
    extendBodyBehindAppBar: true,
     appBar:PreferredSize(
          preferredSize: Size.fromHeight(80.0),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(19),
         color:Colors.blue.withOpacity(0.2),),
       
        child: AppBar(
          backgroundColor: Colors.transparent,
          leading: Container(
            margin: EdgeInsets.only(left: 10,bottom: 10),
            child:
             IconButton(
              iconSize: 30,
              style: IconButton.styleFrom(backgroundColor: Color.fromARGB(255, 23, 24, 24).withOpacity(0.4)),
              onPressed:() {},
               icon: Icon(Icons.menu,color: Color.fromARGB(255, 226, 229, 232)) ,),
         
          ),
          title:Container(
            margin: EdgeInsets.only(left: 40,bottom: 10),
            child: Text('Solar System',style:TextStyle(color:Colors.white,fontSize:22,fontWeight: FontWeight.bold))),
          actions: [Container(
            margin: EdgeInsets.only(bottom: 10,right: 10),
           child:
            IconButton(
              iconSize: 30,
              style: IconButton.styleFrom(backgroundColor: Color.fromARGB(255, 23, 24, 24).withOpacity(0.4)),
              onPressed:() {},
               icon: Icon(Icons.person,color: Color.fromARGB(255, 226, 229, 232)) ,),
           
          ),]),
      )),
         body:Container(
        decoration: BoxDecoration(
          image: DecorationImage(image:
          NetworkImage('https://i.pinimg.com/originals/b3/79/27/b37927985b2ad0606b5096e744a0741f.jpg'),
          fit: BoxFit.cover),
                  ),
       child:Center(
       child: Column(
          children: [
            Expanded(child:
              ListView(
        children: [
          Container(
            width: 200,
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 7),
                  margin: EdgeInsets.all(10),
                  width: 120,
                  height: 60,
                  child:Row(
                    children: [
                      CircleAvatar(
                        backgroundImage:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwhlLYwMlgjtq0GpbihRniE2shlcni3TCwF4N9yC-Cp-TK5xtod-nJDBwNbibruh1X1GU&usqp=CAU'),
                      ),
                      Text('Mercury',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Color.fromARGB(255, 108, 180, 238).withOpacity(0.4),),
                ),
                  Container(
                  padding: EdgeInsets.only(left: 7),
                  margin: EdgeInsets.all(10),
                  width: 120,
                  height: 60,
                  child:Row(
                    children: [
                      CircleAvatar(
                        backgroundImage:NetworkImage('https://www.pngitem.com/pimgs/m/253-2536472_transparent-png-planets-png-download.png'),
                      ),
                      Text('Earth',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Color.fromARGB(255, 108, 180, 238).withOpacity(0.4),),
                ),
               Container(
                  padding: EdgeInsets.only(left: 7),
                  margin: EdgeInsets.all(10),
                  width: 120,
                  height: 60,
                  child:Row(
                    children: [
                      CircleAvatar(
                        backgroundImage:NetworkImage('https://images.rawpixel.com/image_png_800/cHJpdmF0ZS9zdGF0aWMvaW1hZ2VzL3dlYnNpdGUvMjAyMy0wNS9wZG1pc2MxMy13azE2MDE0NTU4YS1pbWFnZV8xLnBuZw.png'),
                      ),
                      Text('Uranus',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Color.fromARGB(255, 108, 180, 238).withOpacity(0.4),),
                ),
                Container(
                  padding: EdgeInsets.only(left: 7),
                  margin: EdgeInsets.all(10),
                  width: 120,
                  height: 60,
                  child:Row(
                    children: [
                      CircleAvatar(
                        backgroundImage:NetworkImage('https://e7.pngegg.com/pngimages/372/678/png-clipart-red-planet-planet-red-planet.png'),
                      ),
                      Text('Venus',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Color.fromARGB(255, 108, 180, 238).withOpacity(0.4),),
                ),
                 Container(
                  padding: EdgeInsets.only(left: 7),
                  margin: EdgeInsets.all(10),
                  width: 120,
                  height: 60,
                  child:Row(
                    children: [
                      CircleAvatar(
                        backgroundImage:NetworkImage('https://w7.pngwing.com/pngs/768/141/png-transparent-round-red-and-yellow-moon-planet-the-transit-of-venus-planet-mars-mercury-planets-miscellaneous-sphere-venus-thumbnail.png'),
                      ),
                      Text('Mars',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Color.fromARGB(255, 108, 180, 238).withOpacity(0.4),),
                ),
                 Container(
                  padding: EdgeInsets.only(left: 7),
                  margin: EdgeInsets.all(10),
                  width: 120,
                  height: 60,
                  child:Row(
                    children: [
                      CircleAvatar(
                        backgroundImage:NetworkImage('https://w7.pngwing.com/pngs/619/305/png-transparent-saturn-planet-earth-solar-system-planet-yellow-jupiter-orange-yellow-flowers-yellow-light.png'),
                      ),
                      Text('Saturn',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Color.fromARGB(255, 108, 180, 238).withOpacity(0.4),),
                ),
                Container(
                  padding: EdgeInsets.only(left: 7),
                  margin: EdgeInsets.all(10),
                  width: 120,
                  height: 60,
                  child:Row(
                    children: [
                      CircleAvatar(
                        backgroundImage:NetworkImage('https://img2.pngdownload.id/20180331/tlq/avit3f4nu.webp'),
                      ),
                      Text('Jupiter',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Color.fromARGB(255, 108, 180, 238).withOpacity(0.4),),
                ),
                Container(
                  padding: EdgeInsets.only(left: 7),
                  margin: EdgeInsets.all(10),
                  width: 120,
                  height: 60,
                  child:Row(
                    children: [
                      CircleAvatar(
                        backgroundImage:NetworkImage('https://e7.pngegg.com/pngimages/330/447/png-clipart-purple-planet-art-earth-planet-neptune-natural-satellite-mercury-planets-purple-violet.png'),
                      ),
                      Text('Neptune',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Color.fromARGB(255, 108, 180, 238).withOpacity(0.4),),
                ),
                
              ],
            ),
            ],
            ),
          ),
         
        Center(
          child: Container(
            padding: EdgeInsets.all( 18),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
            color: Colors.blue.withOpacity(0.4),),
            width: 300,
            height: 370,   
           child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(right: 89),
                child: Text('Planet of the day',style: TextStyle(fontSize: 15,
                fontWeight: FontWeight.bold,color:Colors.white ),textAlign:TextAlign.left,),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 160),
                      child: CircleAvatar(
                        
                        radius: 30,
                        backgroundImage:NetworkImage('https://p1.hiclipart.com/preview/838/865/89/solar-system-earth-mars-planet-jupiter-terrestrial-planet-terraforming-sun-png-clipart.jpg'),
                      ),
                    ),
                    Column(
                      children: [
                       Container(
                        margin: EdgeInsets.only(right: 100),
                         child: Text('Mars',style: TextStyle(fontSize:19,
                            fontWeight: FontWeight.bold,color: Color.fromARGB(255, 2, 188, 255)),),
                       ),
   Text("""
    Mars is the fourth 
    planetfrom the Sun.
    The surface of Mars
    is orange-red because
    it is covered in
    iron(III) oxide dust,
    giving it the nickname 
    "the Red Planet".
""",style: TextStyle(color: Colors.white),),
                      ],
                    ),

                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 155),
                child: Row(
                  children: [
                    Text('Details',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    IconButton(onPressed:(){
                      Navigator.push(context,MaterialPageRoute(builder:(context)=> SecondPage()));
                    }, icon: Icon(Icons.forward,color:Color.fromARGB(255, 2, 188, 255) ,))
                  ],
                ),
              ),
            ],
           ), 
             
          ),
        ),
        //?
        Center(
          child: Container(
            margin: EdgeInsets.only(top: 20),
            width: 300,
            height: 300,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
            color: Colors.blue.withOpacity(0.4),),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 100,top: 19),
                  child: Text('Solar System',style: TextStyle(fontSize: 15,
                  fontWeight: FontWeight.bold,color:Colors.white ),textAlign:TextAlign.left,),
                ),

                Container(
                  margin: EdgeInsets.only(top:8,right: 15),
                  child: Text("""
           The Solar System is the
           gravitationally bound 
           system of the Sun and 
           the objects that orbit it.
           It was formed about 4.6 
           billion years ago when a dense 
           region of a molecular cloud
           collapsed, forming the Sun
           and a protoplanetary
           disc. """,style: TextStyle(color: Colors.white),),
                )
              ],
            ),
          ),
        ),
        ],
       ),
       ),

       ],
      ),
        ),
       ),
        
        bottomNavigationBar: 
            Container(
              width:200,
              height: 80,
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(19),
               color: Colors.blue.withOpacity(0.4),),
              child: BottomNavigationBar(
                backgroundColor: Colors.transparent,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home,color: Color.fromARGB(255, 66, 167, 250),),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_border_outlined),
                    label: 'Favorite',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.more_horiz_outlined),
                    label: 'More',
                  ),
                ],
                currentIndex: _selectedIndex,
                selectedItemColor: Colors.white,
                onTap: _onItemTapped,
              ),
            ),
    );
  }
}

class SecondPage extends StatefulWidget
{
  @override
  _secondpagestate createState() => _secondpagestate(); 
}
class _secondpagestate extends State<SecondPage>
{
    @override
    
    Widget build(BuildContext context)
  {
    return Scaffold(
      body: Container(
      decoration: BoxDecoration(
      image: DecorationImage(image:
      NetworkImage('https://i.pinimg.com/originals/b3/79/27/b37927985b2ad0606b5096e744a0741f.jpg'),
      fit: BoxFit.cover),
     ),
      child:ListView(
      children: [
        Container(
          margin: EdgeInsets.only(top: 50),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 25),
                child: IconButton(
                  iconSize: 35,
                  style: IconButton.styleFrom(backgroundColor: Colors.blue.withOpacity(0.4)),
                 onPressed: ()
                 {
                  setState(() {
                    Navigator.pop(context);
                  });
                 },
                 icon:Icon(Icons.arrow_back_rounded,color:Colors.white,)),
              ),
          
                Container(
                  margin: EdgeInsets.only(left:200),
                  child: IconButton(
                  iconSize: 35,
                  style: IconButton.styleFrom(backgroundColor: Colors.blue.withOpacity(0.4)),
                  onPressed: (){},
                  icon:Icon(Icons.favorite_border_outlined,color:Colors.white,)),
                )
            ],
          ),
        ),
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
              color: Colors.blue.withOpacity(0.4),),
              margin: EdgeInsets.only(top: 150),
              width:400,
              height: 650,
              child: Column(
                children: [
                Container(
                  margin: EdgeInsets.only(top: 100),
                  child: Text('MARS',style: TextStyle(fontSize:30,color:Colors.white,
                   fontWeight: FontWeight.bold),),
                ),
                Container(
                  margin: EdgeInsets.only(left: 60,top:30,bottom:30),
                  child: Row(
                   children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Column(
                      children: [
                      Image.network('https://cdn-icons-png.flaticon.com/256/847/847345.png',
                      width:50,height: 50,color: Colors.white,),
                      Text('Mass',style: TextStyle(color: Colors.white),),
                      Text('(10^24 Kg)',style: TextStyle(color: Colors.white)),
                      Text('5.97',style: TextStyle(color: Colors.white,fontSize:20,fontWeight: FontWeight.bold))
                                        ],
                      ),
                    ),
                     Container(
                      margin: EdgeInsets.all(10),
                     child: Column(
                   children: [
                   Image.network('https://www.iconpacks.net/icons/1/free-magnet-icon-1184-thumb.png',
                   width:50,height: 50,color: Colors.white,),
                   Text('Gravity',style: TextStyle(color: Colors.white),),
                   Text('(m/s2)',style: TextStyle(color: Colors.white)),
                  Text('9.8',style: TextStyle(color: Colors.white,fontSize:20,fontWeight: FontWeight.bold))
                ],
                 ),
                     ),
                     Container(
                      margin: EdgeInsets.all(10),
                       child: Column(
                       children: [
                       Image.network('https://cdn4.iconfinder.com/data/icons/icon-flat-icon-set/50/sun-empty-512.png',
                       width:50,height: 50,color: Colors.white,),
                       Text('Day',style: TextStyle(color: Colors.white),),
                       Text('(hours)',style: TextStyle(color: Colors.white)),
                       Text('24',style: TextStyle(color: Colors.white,fontSize:20,fontWeight: FontWeight.bold))
                        ],
                                           ),
                     ),
                   ],
                  ),
                ),
                 
                 Container(
                  margin: EdgeInsets.only(left: 60),
                  child: Row(
                   children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Column(
                      children: [
                     Image.network('https://cdn-icons-png.flaticon.com/512/157/157410.png',
                       width:50,height: 50,
                       color: Colors.white,
                      ),
                      Text('velocity',style: TextStyle(color: Colors.white),),
                      Text('(Km/s)',style: TextStyle(color: Colors.white)),
                      Text('11.2',style: TextStyle(color: Colors.white,fontSize:20,fontWeight: FontWeight.bold))
                                        ],
                      ),
                    ),
                     Container(
                      margin: EdgeInsets.all(10),
                     child: Column(
                   children: [
                   Image.network('https://cdn-icons-png.flaticon.com/512/107/107818.png',
                   width:50,height: 50,color: Colors.white,),
                   Text('Mean',style: TextStyle(color: Colors.white),),
                   Text('Temp(C)',style: TextStyle(color: Colors.white)),
                  Text('20',style: TextStyle(color: Colors.white,fontSize:20,fontWeight: FontWeight.bold))
                ],
                 ),
                     ),
                     Container(
                      margin: EdgeInsets.all(10),
                       child: Column(
                       children: [
                       Image.network('https://cdn-icons-png.flaticon.com/512/92/92065.png',
                       width:50,height: 50,color: Colors.white,),
                       Text('Distance',style: TextStyle(color: Colors.white),),
                       Text('(Km)',style: TextStyle(color: Colors.white)),
                       Text('106',style: TextStyle(color: Colors.white,fontSize:20,fontWeight: FontWeight.bold))
                        ],
                                           ),
                     ),
                   ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor:Color.fromARGB(255, 24, 99, 229)),
                  onPressed: (){},
                 child:Text('Visit',
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),

                ],
              ),
             
            ),
            Positioned(
              child:
            CircleAvatar(
              backgroundImage: NetworkImage('https://img.favpng.com/9/1/9/earth-terrestrial-planet-mars-solar-system-png-favpng-9xQCpFp9YSnNpWP5bA4wspb4j.jpg'),
              radius: 70,
            ),
            left: 110,
            top: 80,
            ),
          ],
        )
      ],
                  ),
                  ),
    );
  }


}


