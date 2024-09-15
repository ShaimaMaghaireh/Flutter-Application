import 'package:flutter_application_2/bottomnavigatpages.dart';
import 'finalproject.dart';
import 'morepages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class InformationPage2 extends StatefulWidget
{
  
  @override
  State <InformationPage2> createState() => _InformationPage2state(); 
}
class _InformationPage2state extends State<InformationPage2>
{
   bool isBooked=false;
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
              'https://miro.medium.com/v2/resize:fit:600/1*Daqq1UKZnIul_LG9-qst3A.png',
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
                  Row(children: [Text('Petra',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                  Text('',style: TextStyle(color:Colors.white),)
                  ],),
                  SizedBox(height: 10,),
                  Row(children: [Icon(Icons.location_on_outlined,color: Colors.white,),
                  SizedBox(width: 20,),Text('Jordan,Maan',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
                   SizedBox(width: 20,),Icon(Icons.attach_money,color: Colors.white,),
                   Text('70',style: TextStyle(color:Colors.white,fontSize:15))],)
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
                 SizedBox (width: 10,),Icon(Icons.schedule),Text(' 2 hours',style:TextStyle(fontWeight: FontWeight.bold)),
                 SizedBox (width: 20,),Icon(Icons.cloud),Text(' 30°C',style:TextStyle(fontWeight: FontWeight.bold)),
                 SizedBox (width: 20,),Icon(Icons.star),Text(' 5.0',style:TextStyle(fontWeight: FontWeight.bold)),
                 ],),
                  SizedBox (height: 20,),
                  Text("""
Petra  is a historic and 
archaeological city in 
southern Jordan. Famous for 
its rock-cut architecture 
and water conduit systems, 
Petra is also called the 
"Rose City" because of the 
colour of the sandstone from 
which it is carved. The city 
is one of the New 7 Wonders 
of the World.
""",style:TextStyle(fontWeight: FontWeight.bold,fontSize:15)),
               ],),
             )),
             Positioned(
              top: 700,left:50,
              child: SizedBox(
                width:200,
              child:ElevatedButton(
              onPressed:(){
                Navigator.push(context,MaterialPageRoute(builder:(context)=> ScedulesPage(isBooked: isBooked)));
                setState(() {
                  isBooked=!isBooked;
                });
              }, child:Text('Book Now',
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

class InformationPage3 extends StatefulWidget
{
  @override
  State <InformationPage3> createState() => _InformationPage3state(); 
}
class _InformationPage3state extends State<InformationPage3>
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
              'https://pbs.twimg.com/media/E8NChVAWUAcgc2v.jpg:large',
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
                  Row(children: [Text('Trabzon',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                  Text('',style: TextStyle(color:Colors.white),)
                  ],),
                  SizedBox(height: 10,),
                  Row(children: [Icon(Icons.location_on_outlined,color: Colors.white,),
                  SizedBox(width: 20,),Text('Turky,Trabzon',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
                   SizedBox(width: 10,),Icon(Icons.attach_money,color: Colors.white,),
                   Text('500',style: TextStyle(color:Colors.white,fontSize:15))],)
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
                 SizedBox (width: 10,),Icon(Icons.schedule),Text(' 3 days',style:TextStyle(fontWeight: FontWeight.bold)),
                 SizedBox (width: 20,),Icon(Icons.cloud),Text(' 27°C',style:TextStyle(fontWeight: FontWeight.bold)),
                 SizedBox (width: 20,),Icon(Icons.star),Text(' 5.0',style:TextStyle(fontWeight: FontWeight.bold)),
                 ],),
                  SizedBox (height: 20,),
                  Text("""
Trabzon, historically known as 
Trebizond,is a city on the Black 
Sea coast of northeastern Turkey 
and the capital of Trabzon 
Province.Trabzon,located on the 
historical Silk Road(citation needed),became a melting pot of 
religions,languages and culture for 
centuries and a trade gateway to
Persia in the southeast and the Caucasus to the northeast.
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

class InformationPage4 extends StatefulWidget
{
  @override
  State <InformationPage4> createState() => _InformationPage4state(); 
}
class _InformationPage4state extends State<InformationPage4>
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
              'https://storage.googleapis.com/pod_public/1300/174593.jpg',
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
                  Row(children: [Text('Eiffel Tower',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                  Text('',style: TextStyle(color:Colors.white),)
                  ],),
                  SizedBox(height: 10,),
                  Row(children: [Icon(Icons.location_on_outlined,color: Colors.white,),
                  SizedBox(width: 20,),Text('France,Paris',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
                   SizedBox(width: 10,),Icon(Icons.attach_money,color: Colors.white,),
                   Text('500',style: TextStyle(color:Colors.white,fontSize:15))],)
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
                 SizedBox (width: 10,),Icon(Icons.schedule),Text(' 3 days',style:TextStyle(fontWeight: FontWeight.bold)),
                 SizedBox (width: 20,),Icon(Icons.cloud),Text(' 20°C',style:TextStyle(fontWeight: FontWeight.bold)),
                 SizedBox (width: 20,),Icon(Icons.star),Text(' 4.0',style:TextStyle(fontWeight: FontWeight.bold)),
                 ],),
                  SizedBox (height: 20,),
                  Text("""
The Eiffel Tower is a wrought-iron 
lattice tower on the Champ de 
Mars in Paris, France. It is named 
after the engineer Gustave Eiffel, 
whose company designed and 
built the tower from 1887 to 
1889.The tower is 330 metres 
(1,083 ft) tall about the same height as an 81-storey building,
and the tallest structure in Paris. 
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
