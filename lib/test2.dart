import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'morepages.dart';
import 'informations.dart';

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
      home: Home2Page(),
    );
  }
}
class Home2Page extends StatefulWidget
{
  // final bool isFavorite;
  // final String userN;
  // Home2Page({required this.userN});
  @override
  State <Home2Page> createState() => _Home2Pagestate(); 
}
class _Home2Pagestate extends State<Home2Page>
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

  bool isFavorite = false;
   int selectedIndex = 0;

   @override
    
    Widget build(BuildContext context)
    {
      return Scaffold(
         body:ListView(
          children: [
        Container(
           margin: EdgeInsets.only(left: 20),
          child: Text('Explore the world',
           style: TextStyle(fontSize:20,color:Colors.black,fontWeight: FontWeight.bold),),
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
                ): Text('Nothig Found!'),

 
                

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
                 TextButton(
                  onPressed: () {
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
                    style: TextStyle(
                      color: selectedIndex == 0 ? Colors.white : Colors.black,
                    ),
                  ),
                ),
                SizedBox(width: 30,),
                TextButton(
                  onPressed: () {
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
                    style: TextStyle(
                      color: selectedIndex == 1 ? Colors.white : Colors.black,
                    ),
                  ),
                ),
                 SizedBox(width: 30,),
                TextButton(
                  onPressed: () {
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
                    style: TextStyle(
                      color: selectedIndex == 2 ? Colors.white : Colors.black,
                    ),
                  ),
                ),
                 SizedBox(width: 30,),
                TextButton(
                  onPressed: () {
                    setState(() {
                      selectedIndex = 3;
                    });
                  },
                  style: TextButton.styleFrom(
                    backgroundColor:
                        selectedIndex == 3 ? Colors.black : Colors.grey[300],
                  ),
                  child: Text(
                    'Latest',
                    style: TextStyle(
                      color: selectedIndex == 3 ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      
      Container(
                  width: 300,height:500,
                  child:ListView.builder(
                  itemCount: places.length,
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
             places[index]['image'],
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
                  Row(children: [Text(places[index]['title'],style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                  ],),
                  SizedBox(height: 10,),
                  Row(children: [Icon(Icons.location_on_outlined,color: Colors.white,),
                  SizedBox(width: 20,),Text(places[index]['location'],style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
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
                    ),
      // Container(
      //   width: 300,height: 500,
      //   child: ListView(
      //     scrollDirection: Axis.horizontal,
      //     children: [
      //       Row(children: [
      //      GestureDetector(
      //       onDoubleTap: () {
      //         print('fuji');
      //       },
      //        child: Card(
      //         clipBehavior: Clip.antiAliasWithSaveLayer,
      //         child:Stack(
      //           children: [
      //         Image.network(
      //         'https://images.fineartamerica.com/images/artworkimages/mediumlarge/2/view-of-mount-fuji-with-cherry-blossom-tanatat-pongphibool-thailand.jpg',
      //         fit: BoxFit.fill,width:320,height: 400,
      //         ),
      //         Positioned(child:IconButton(
      //            style: IconButton.styleFrom(backgroundColor: Colors.grey.withOpacity(0.4)),
      //           onPressed: (){
      //           setState(() {
      //             isFavorite = !isFavorite;
      //           });
      //           }, 
      //         icon:Icon(isFavorite ? Icons.favorite : Icons.favorite_border,
      //         color: isFavorite ? Colors.red : null,),
      //         iconSize:35,color:Colors.white,),
      //         left: 250,top: 16,
      //         ),
      //         Positioned(
      //           top: 250,
      //           child: Container(
      //            padding: EdgeInsets.all(15),
      //           width:250,height:100,margin: EdgeInsets.all(30),
      //           decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color:const Color.fromARGB(255, 19, 96, 134).withOpacity(0.8)),
      //           child:Column(children: [
      //             Row(children: [Text('Mount Fuji',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
      //             ],),
      //             SizedBox(height: 10,),
      //             Row(children: [Icon(Icons.location_on_outlined,color: Colors.white,),
      //             SizedBox(width: 20,),Text('Japan,Tokyo',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
      //              SizedBox(width: 20,),Icon(Icons.star_border_outlined,color: Colors.white,),
      //              Text('4.9',style: TextStyle(color:Colors.white,fontSize:15))],)
      //           ],), )) ],),
      //         shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(30.0),
      //         ),
      //         elevation: 5,margin: EdgeInsets.all(10),shadowColor: Color.fromARGB(255, 37, 0, 158),
      //        ),
      //        ),

      //         GestureDetector(
      //       onDoubleTap: () {},
      //        child: Card(
      //         clipBehavior: Clip.antiAliasWithSaveLayer,
      //         child:Stack(
      //           children: [
      //         Image.network(
      //         'https://peakvisor.com/photo/chimborazo.jpg',
      //         fit: BoxFit.fill,width:320,height: 400,
      //         ),
      //         Positioned(child:IconButton(
      //            style: IconButton.styleFrom(backgroundColor: Colors.grey.withOpacity(0.4)),
      //           onPressed: (){}, 
      //         icon:Icon(Icons.favorite_border_outlined),iconSize:35,color:Colors.white,),
      //         left: 250,top: 16,
      //         ),
      //         Positioned(
      //           top: 250,
      //           child: Container(
      //            padding: EdgeInsets.all(15),
      //           width:250,height:100,margin: EdgeInsets.all(30),
      //           decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color:const Color.fromARGB(255, 19, 96, 134).withOpacity(0.8)),
      //           child:Column(children: [
      //             Row(children: [Text('Andes Mountains',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
      //             ],),
      //             SizedBox(height: 10,),
      //             Row(children: [Icon(Icons.location_on_outlined,color: Colors.white,),
      //             SizedBox(width: 20,),Text('South America',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
      //              SizedBox(width: 10,),Icon(Icons.star_border_outlined,color: Colors.white,),
      //              Text('4.9',style: TextStyle(color:Colors.white,fontSize:15))],)
      //           ],), )) ],),
      //         shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(30.0),
      //         ),
      //         elevation: 5,margin: EdgeInsets.all(10),shadowColor: Color.fromARGB(255, 37, 0, 158),
      //        ),),
      //         GestureDetector(
      //       onDoubleTap: () {
      //         print('fuji');
      //       },
      //        child: Card(
      //         clipBehavior: Clip.antiAliasWithSaveLayer,
      //         child:Stack(
      //           children: [
      //         Image.network(
      //         'https://static.toiimg.com/photo/108206552/108206552.jpg',
      //         fit: BoxFit.fill,width:320,height: 400,
      //         ),
      //         Positioned(child:IconButton(
      //            style: IconButton.styleFrom(backgroundColor: Colors.grey.withOpacity(0.4)),
      //           onPressed: (){}, 
      //         icon:Icon(Icons.favorite_border_outlined),iconSize:35,color:Colors.white,),
      //         left: 250,top: 16,
      //         ),
      //         Positioned(
      //           top: 250,
      //           child: Container(
      //            padding: EdgeInsets.all(15),
      //           width:250,height:100,margin: EdgeInsets.all(30),
      //           decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color:const Color.fromARGB(255, 19, 96, 134).withOpacity(0.8)),
      //           child:Column(children: [
      //             Row(children: [Text('Alps',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
      //             ],),
      //             SizedBox(height: 10,),
      //             Row(children: [Icon(Icons.location_on_outlined,color: Colors.white,),
      //             SizedBox(width: 20,),Text('Switzerland',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
      //              SizedBox(width: 20,),Icon(Icons.star_border_outlined,color: Colors.white,),
      //              Text('4.9',style: TextStyle(color:Colors.white,fontSize:15))],)
      //           ],), )) ],),
      //         shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(30.0),
      //         ),
      //         elevation: 5,margin: EdgeInsets.all(10),shadowColor: Color.fromARGB(255, 37, 0, 158),
      //        ),),
      //         GestureDetector(
      //       onDoubleTap: () {
      //         print('fuji');
      //       },
      //        child: Card(
      //         clipBehavior: Clip.antiAliasWithSaveLayer,
      //         child:Stack(
      //           children: [
      //         Image.network(
      //         'https://i.redd.it/77t86nlexij91.jpg',
      //         fit: BoxFit.fill,width:320,height: 400,
      //         ),
      //         Positioned(child:IconButton(
      //            style: IconButton.styleFrom(backgroundColor: Colors.grey.withOpacity(0.4)),
      //           onPressed: (){}, 
      //         icon:Icon(Icons.favorite_border_outlined),iconSize:35,color:Colors.white,),
      //         left: 250,top: 16,
      //         ),
      //         Positioned(
      //           top: 250,
      //           child: Container(
      //            padding: EdgeInsets.all(15),
      //           width:250,height:100,margin: EdgeInsets.all(30),
      //           decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color:const Color.fromARGB(255, 19, 96, 134).withOpacity(0.8)),
      //           child:Column(children: [
      //             Row(children: [Text('Mount Kilimanjaro',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
      //             ],),
      //             SizedBox(height: 10,),
      //             Row(children: [Icon(Icons.location_on_outlined,color: Colors.white,),
      //             SizedBox(width: 20,),Text('Tanzania',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
      //              SizedBox(width: 20,),Icon(Icons.star_border_outlined,color: Colors.white,),
      //              Text('4.9',style: TextStyle(color:Colors.white,fontSize:15))],)
      //           ],), )) ],),
      //         shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(30.0),
      //         ),
      //         elevation: 5,margin: EdgeInsets.all(10),shadowColor: Color.fromARGB(255, 37, 0, 158),
      //        ),),
      //         GestureDetector(
      //       onDoubleTap: () {
      //       //  Navigator.push(context, MaterialPageRoute(builder: (context) => InformationPage()));
      //       },
      //        child: Card(
      //         clipBehavior: Clip.antiAliasWithSaveLayer,
      //         child:Stack(
      //           children: [
      //         Image.network(
      //         'https://i.pinimg.com/736x/e5/e2/b8/e5e2b898590e40c13d3ebfeee047aebe.jpg',
      //         fit: BoxFit.fill,width:320,height: 400,
      //         ),
      //         Positioned(child:IconButton(
      //            style: IconButton.styleFrom(backgroundColor: Colors.grey.withOpacity(0.4)),
      //           onPressed: (){}, 
      //         icon:Icon(Icons.favorite_border_outlined),iconSize:35,color:Colors.white,),
      //         left: 250,top: 16,
      //         ),
      //         Positioned(
      //           top: 250,
      //           child: Container(
      //            padding: EdgeInsets.all(15),
      //           width:250,height:100,margin: EdgeInsets.all(30),
      //           decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color:const Color.fromARGB(255, 19, 96, 134).withOpacity(0.8)),
      //           child:Column(children: [
      //             Row(children: [Text('Himilaya Mountains,Asia',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
      //             Text('',style: TextStyle(color:Colors.white),)
      //             ],),
      //             SizedBox(height: 10,),
      //             Row(children: [Icon(Icons.location_on_outlined,color: Colors.white,),
      //             SizedBox(width: 20,),Text('Chaina',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
      //              SizedBox(width: 20,),Icon(Icons.star_border_outlined,color: Colors.white,),
      //              Text('4.9',style: TextStyle(color:Colors.white,fontSize:15))],)
      //           ],), )) ],),
      //         shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(30.0),
      //         ),
      //         elevation: 5,margin: EdgeInsets.all(10),shadowColor: Color.fromARGB(255, 37, 0, 158),
      //        ),),
      //         ],),
      //     ],
      //   ),
      // ),

          ],
        )
      );
    }
}