import 'finalproject.dart';
import 'informations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class FavoritesPage extends StatefulWidget
{
  final bool isFavorite;
  FavoritesPage({required this.isFavorite});
  @override
  State <FavoritesPage> createState() => _FavoritesPagestate(); 
}
class _FavoritesPagestate extends State<FavoritesPage>
{
   @override
   Widget build(BuildContext context)
   {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Page'),
      ),
      body: Center(
        child:widget.isFavorite
            ?  GestureDetector(
            onDoubleTap: (
            ) {},
             child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child:Stack(
                children: [
              Image.network(
              'https://images.fineartamerica.com/images/artworkimages/mediumlarge/2/view-of-mount-fuji-with-cherry-blossom-tanatat-pongphibool-thailand.jpg',
              fit: BoxFit.fill,width:320,height: 400,
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
             ),)
            : Text('No items in your favorites'),
      ),
    );
   }
  
}

class ScedulesPage extends StatefulWidget
{
  final bool isBooked;
  ScedulesPage({required this.isBooked});
  @override
  State <ScedulesPage> createState() => _ScedulesPagestate(); 
}
class _ScedulesPagestate extends State<ScedulesPage>
{
   @override
   Widget build(BuildContext context)
   {
    return Scaffold( appBar: AppBar(
        title: Text('Schedule Page'),),
        body: Center(
        child:widget.isBooked ?
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
                   ),) : Text('No items in your Schedule'), ),
    );
   }
}

