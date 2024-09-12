import 'finalproject.dart';
import 'informations.dart';
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
      home: MostViewedPage(),
    );
  }
}
class MostViewedPage extends StatefulWidget
{
  @override
  State <MostViewedPage> createState() => _MostViewedPagestate(); 
}
class _MostViewedPagestate extends State<MostViewedPage>
{
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
     return Scaffold(
      appBar: AppBar(title:Text('Most Viewed Places'),),
     body:
         Container(
          height: 700,color:Color.fromARGB(255, 178, 188, 237).withOpacity(0.4),
           child: ListView(
            children: [
              Container(
              width: 300,height: 500,
              child: ListView(
                // scrollDirection: Axis.horizontal,
                children: [
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
                    fit: BoxFit.fill,width:340,height: 400,
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
                    'https://images.memphistours.com/large/736049c384b153a5639e0ecffecfb2d5.jpg',
                    fit: BoxFit.fill,width:340,height: 400,
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
                        Row(children: [Text('Mount Denali',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                        ],),
                        SizedBox(height: 10,),
                        Row(children: [Icon(Icons.location_on_outlined,color: Colors.white,),
                        SizedBox(width: 20,),Text('America,Alaska',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
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
                    fit: BoxFit.fill,width:340,height: 400,
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
                    fit: BoxFit.fill,width:340,height: 400,
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
                    print('fuji');
                  },
                   child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child:Stack(
                      children: [
                    Image.network(
                    'https://cdn.sanity.io/images/oyzyxja8/v2/32f40a1e755df0db8b71ee649e854fa807662386-1700x2000.jpg?w=2048&q=90&auto=format',
                    fit: BoxFit.fill,width:340,height: 400,
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
                        Row(children: [Text('Atlas Mountain',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                       
                        ],),
                        SizedBox(height: 10,),
                        Row(children: [Icon(Icons.location_on_outlined,color: Colors.white,),
                        SizedBox(width: 20,),Text('Moroco',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
                         SizedBox(width: 20,),Icon(Icons.star_border_outlined,color: Colors.white,),
                         Text('4.9',style: TextStyle(color:Colors.white,fontSize:15))],)
                      ],), )) ],),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    elevation: 5,margin: EdgeInsets.all(10),shadowColor: Color.fromARGB(255, 37, 0, 158),
                   ),),
                
                ],
              ),
            ),
           
            ],
           ),
         ),
       

      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:IconButton(onPressed: () {
               Navigator.pop(context);
            },icon: Icon(Icons.home),),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: IconButton(onPressed:(){
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => FavoritesPage(isFavorite: isFavorite),
              //   ),
              // ); Icon(Icons.home),
            }, icon:Icon(Icons.favorite)),
            label: 'Favorite',
           
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
     );
   }
}


class NearbyPage extends StatefulWidget
{
  @override
  State <NearbyPage> createState() => _NearbyPagestate(); 
}
class _NearbyPagestate extends State<NearbyPage>
{
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
     return Scaffold(
        appBar: AppBar(title:Text('Nearby Places'),),
     body:
         Container(
          height: 700,color:Color.fromARGB(255, 178, 188, 237).withOpacity(0.4),
           child: ListView(
            children: [
              Container(
              width: 300,height: 500,
              child: ListView(
                // scrollDirection: Axis.horizontal,
                children: [
                 GestureDetector(
                  onDoubleTap: () {
                   Navigator.push(context,MaterialPageRoute(builder:(context)=>InformationPage2()));
                  },
                   child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child:Stack(
                      children: [
                    Image.network(
                    'https://miro.medium.com/v2/resize:fit:600/1*Daqq1UKZnIul_LG9-qst3A.png',
                    fit: BoxFit.fill,width:340,height: 400,
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
                        Row(children: [Text('Petra',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                        ],),
                        SizedBox(height: 10,),
                        Row(children: [Icon(Icons.location_on_outlined,color: Colors.white,),
                        SizedBox(width: 20,),Text('Jordan,Maan',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
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
                    'https://i.redd.it/qb3w3oiugxz61.jpg',
                    fit: BoxFit.fill,width:340,height: 400,
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
                        Row(children: [Text('Jerash',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                        ],),
                        SizedBox(height: 10,),
                        Row(children: [Icon(Icons.location_on_outlined,color: Colors.white,),
                        SizedBox(width: 20,),Text('Jordan,Jerash',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
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
                    'https://media-cdn.tripadvisor.com/media/attractions-splice-spp-720x480/11/5b/b8/2d.jpg',
                    fit: BoxFit.fill,width:340,height: 400,
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
                        Row(children: [Text('Jadara(Umm Qais)',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                        ],),
                        SizedBox(height: 10,),
                        Row(children: [Icon(Icons.location_on_outlined,color: Colors.white,),
                        SizedBox(width: 20,),Text('Jordan,Irbid',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
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
                    'https://jordantimes.com/sites/default/files/styles/news_inner/public/2ajloun-castle.jpg?itok=V784M1a0',
                    fit: BoxFit.fill,width:340,height: 400,
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
                        Row(children: [Text('Ajloun Castle',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                        ],),
                        SizedBox(height: 10,),
                        Row(children: [Icon(Icons.location_on_outlined,color: Colors.white,),
                        SizedBox(width: 20,),Text('Jordan,Ajloun',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
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
                    'https://www.mediastorehouse.com.au/p/251/kerak-castle-al-karak-karak-governorate-jordan-19383355.jpg.webp',
                    fit: BoxFit.fill,width:340,height: 400,
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
                        Row(children: [Text('Karak Castle',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                        ],),
                        SizedBox(height: 10,),
                        Row(children: [Icon(Icons.location_on_outlined,color: Colors.white,),
                        SizedBox(width: 20,),Text('Jordan,Karak',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
                         SizedBox(width: 20,),Icon(Icons.star_border_outlined,color: Colors.white,),
                         Text('4.9',style: TextStyle(color:Colors.white,fontSize:15))],)
                      ],), )) ],),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    elevation: 5,margin: EdgeInsets.all(10),shadowColor: Color.fromARGB(255, 37, 0, 158),
                   ),),
                
                ],
              ),
            ),
           
            ],
           ),
         ),
       

      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:IconButton(onPressed: () {
               Navigator.pop(context);
            },icon: Icon(Icons.home),),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: IconButton(onPressed:(){
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => FavoritesPage(isFavorite: isFavorite),
              //   ),
              // ); Icon(Icons.home),
            }, icon:Icon(Icons.favorite)),
            label: 'Favorite',
           
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
     );
   }
}

class LatestaddPage extends StatefulWidget
{
  @override
  State <LatestaddPage> createState() => _LatestaddPagestate(); 
}
class _LatestaddPagestate extends State<LatestaddPage>
{
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
     return Scaffold(
        appBar: AppBar(title:Text('Latest Places'),),
     body:
         Container(
          height: 700,color:Color.fromARGB(255, 178, 188, 237).withOpacity(0.4),
           child: ListView(
            children: [
              Container(
              width: 300,height: 500,
              child: ListView(
                children: [
                 GestureDetector(
                  onDoubleTap: () {
                   Navigator.push(context,MaterialPageRoute(builder:(context)=>InformationPage3()));
                  },
                   child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child:Stack(
                      children: [
                    Image.network(
                    'https://pbs.twimg.com/media/E8NChVAWUAcgc2v.jpg:large',
                    fit: BoxFit.fill,width:340,height: 400,
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
                        Row(children: [Text('Trabzon',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                        ],),
                        SizedBox(height: 10,),
                        Row(children: [Icon(Icons.location_on_outlined,color: Colors.white,),
                        SizedBox(width: 20,),Text('Turky,Trabzon',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
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
                    'https://i.pinimg.com/originals/22/9b/05/229b055491ab1fa3f2fe58a066e96e82.jpg',
                    fit: BoxFit.fill,width:340,height: 400,
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
                        Row(children: [Text('Santorini Island',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                        ],),
                        SizedBox(height: 10,),
                        Row(children: [Icon(Icons.location_on_outlined,color: Colors.white,),
                        SizedBox(width: 20,),Text('Greece',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
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
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/Monument_wiecznej_milosci-Taj_Mahal_Agra_-_panoramio.jpg/640px-Monument_wiecznej_milosci-Taj_Mahal_Agra_-_panoramio.jpg',
                    fit: BoxFit.fill,width:340,height: 400,
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
                        Row(children: [Text('Taj Mahal',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                        ],),
                        SizedBox(height: 10,),
                        Row(children: [Icon(Icons.location_on_outlined,color: Colors.white,),
                        SizedBox(width: 20,),Text('India,Agra',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
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
                    'https://pbs.twimg.com/media/D4eghs5UIAEIMZO?format=jpg&name=large',
                    fit: BoxFit.fill,width:340,height: 400,
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
                        Row(children: [Text('Gyeongbokgung Palace',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                        ],),
                        SizedBox(height: 10,),
                        Row(children: [Icon(Icons.location_on_outlined,color: Colors.white,),
                        SizedBox(width: 5,),Text('South Korea,Seoul',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
                         SizedBox(width: 5,),Icon(Icons.star_border_outlined,color: Colors.white,),
                         Text('4',style: TextStyle(color:Colors.white,fontSize:15))],)
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
                    'https://i.natgeofe.com/n/535f3cba-f8bb-4df2-b0c5-aaca16e9ff31/giza-plateau-pyramids_2x3.jpg',
                    fit: BoxFit.fill,width:340,height: 400,
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
                        Row(children: [Text('Pyramids of Giza',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                        ],),
                        SizedBox(height: 10,),
                        Row(children: [Icon(Icons.location_on_outlined,color: Colors.white,),
                        SizedBox(width: 20,),Text('Egypt,Cairo',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
                         SizedBox(width: 20,),Icon(Icons.star_border_outlined,color: Colors.white,),
                         Text('4.9',style: TextStyle(color:Colors.white,fontSize:15))],)
                      ],), )) ],),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    elevation: 5,margin: EdgeInsets.all(10),shadowColor: Color.fromARGB(255, 37, 0, 158),
                   ),),
                
                ],
              ),
            ),
           
            ],
           ),
         ),
       

      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:IconButton(onPressed: () {
               Navigator.pop(context);
            },icon: Icon(Icons.home),),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: IconButton(onPressed:(){
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => FavoritesPage(isFavorite: isFavorite),
              //   ),
              // ); Icon(Icons.home),
            }, icon:Icon(Icons.favorite)),
            label: 'Favorite',
           
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
     );
   }
}

class RecomendedPage extends StatefulWidget
{
  @override
  State <RecomendedPage> createState() => _RecomendedPagestate(); 
}
class _RecomendedPagestate extends State<RecomendedPage>
{
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
     return Scaffold(
        appBar: AppBar(title:Text('Recomended Places'),),
     body:
         Container(
          height: 700,color:Color.fromARGB(255, 178, 188, 237).withOpacity(0.4),
           child: ListView(
            children: [
              Container(
              width: 300,height: 500,
              child: ListView(
                children: [
                 GestureDetector(
                  onDoubleTap: () {
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>InformationPage4()));
                  },
                   child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child:Stack(
                      children: [
                    Image.network(
                    'https://storage.googleapis.com/pod_public/1300/174593.jpg',
                    fit: BoxFit.fill,width:340,height: 400,
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
                        Row(children: [Text('Eiffel Tower',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                        ],),
                        SizedBox(height: 10,),
                        Row(children: [Icon(Icons.location_on_outlined,color: Colors.white,),
                        SizedBox(width: 20,),Text('France,Paris',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
                         SizedBox(width: 20,),Icon(Icons.star_border_outlined,color: Colors.white,),
                         Text('5.0',style: TextStyle(color:Colors.white,fontSize:15))],)
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
                    'https://i.pinimg.com/736x/3b/53/85/3b53854207eee71d4c6b94765e8674d5.jpg',
                    fit: BoxFit.fill,width:340,height: 400,
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
                        Row(children: [Text('The Leaning Tower of Pizza',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                        ],),
                        SizedBox(height: 10,),
                        Row(children: [Icon(Icons.location_on_outlined,color: Colors.white,),
                        SizedBox(width: 20,),Text('Italy,Toscana',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
                         SizedBox(width: 10,),Icon(Icons.star_border_outlined,color: Colors.white,),
                         Text('4.5',style: TextStyle(color:Colors.white,fontSize:15))],)
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
                    'https://lp-cms-production.imgix.net/2023-07/shutterstockRF582611728.jpg?fit=crop&ar=1%3A1&w=1200&auto=format&q=75',
                    fit: BoxFit.fill,width:340,height: 400,
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
                        Row(children: [Text('Alhambra Palace',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                        ],),
                        SizedBox(height: 10,),
                        Row(children: [Icon(Icons.location_on_outlined,color: Colors.white,),
                        SizedBox(width: 20,),Text('Spain,Granada',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
                         SizedBox(width: 10,),Icon(Icons.star_border_outlined,color: Colors.white,),
                         Text('4.7',style: TextStyle(color:Colors.white,fontSize:15))],)
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
                    'https://a.storyblok.com/f/53624/2400x3600/9907b23a27/street-level-view-of-big-ben.jpg/m/',
                    fit: BoxFit.fill,width:340,height: 400,
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
                        Row(children: [Text('Big Ben Clock',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                        ],),
                        SizedBox(height: 10,),
                        Row(children: [Icon(Icons.location_on_outlined,color: Colors.white,),
                        SizedBox(width: 10,),Text('United Kingdom',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
                         SizedBox(width: 5,),Icon(Icons.star_border_outlined,color: Colors.white,),
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
                    'https://w0.peakpx.com/wallpaper/27/882/HD-wallpaper-great-wall-china-mutianyu.jpg',
                    fit: BoxFit.fill,width:340,height: 400,
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
                        Row(children: [Text('Great Wall Of China',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                        ],),
                        SizedBox(height: 10,),
                        Row(children: [Icon(Icons.location_on_outlined,color: Colors.white,),
                        SizedBox(width: 20,),Text('China,Beijing',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
                         SizedBox(width: 10,),Icon(Icons.star_border_outlined,color: Colors.white,),
                         Text('4.9',style: TextStyle(color:Colors.white,fontSize:15))],)
                      ],), )) ],),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    elevation: 5,margin: EdgeInsets.all(10),shadowColor: Color.fromARGB(255, 37, 0, 158),
                   ),),
                
                ],
              ),
            ),
           
            ],
           ),
         ),
       

      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:IconButton(onPressed: () {
               Navigator.pop(context);
            },icon: Icon(Icons.home),),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: IconButton(onPressed:(){
            }, icon:Icon(Icons.favorite)),
            label: 'Favorite',
           
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
     );
   }
}