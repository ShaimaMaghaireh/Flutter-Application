// import 'package:flutter/material.dart';
// import 'package:flutter_application_2/main.dart';
// void main ()
// {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget
// {
//  @override
//   Widget build(BuildContext context)
//   {
//     return MaterialApp(home: HomePage(),);
//   }
// }

// void display()
// {
//   print('WELCOME');
// }
// class HomePage extends StatelessWidget
// {
//   @override
  
//   Widget build(BuildContext context)
//   {
//     return Scaffold(
//       appBar:PreferredSize(
//           preferredSize: Size.fromHeight(80.0),
//       child: AppBar(
//         backgroundColor:Color.fromRGBO(125, 12, 121, 1),
//         leading: Container(
//           margin: EdgeInsets.only(left: 10,bottom: 10),
//           child: CircleAvatar(
//            radius: 55,
//             backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR89szTTVSYbGbqPrcVllEAsWdfMxn7kygzug&s'),
//         )),
//         title:Container(
//           margin: EdgeInsets.only(left: 40,bottom: 10),
//           child: Text('Flower',style:TextStyle(color:Color.fromARGB(255, 60, 179, 234),fontSize:35))),
//         actions: [Container(
//           margin: EdgeInsets.only(bottom: 10,right: 10),
//           child: ElevatedButton(onPressed:() => {display()}, child:Text('press'),
//           style:ElevatedButton.styleFrom(padding: EdgeInsets.only(top:10,bottom:10),backgroundColor:Color.fromARGB(255, 245, 173, 239)),),
//         )])),
//        body:
//         Column(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: <Widget>[
//           Container(
//             margin: EdgeInsets.only(left: 50),
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10), color: Color.fromARGB(255, 184, 81, 145)),
//             child: const Padding(
//               padding: EdgeInsets.all(8.0),
//               child: Text(
//                 "Type of Flower",
//                 style: TextStyle(color: Colors.white, fontSize: 25),
//               ),
//             ),
//           ),
//           Container(
//              margin: EdgeInsets.only(left: 50),
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10), color: Color.fromARGB(255, 184, 81, 145)),
//             child: const Padding(
//               padding: EdgeInsets.all(8.0),
//                child: Text(
//                 '                            ',
//                 style: TextStyle(color: Colors.white, fontSize: 25),
//               ),
//             ),
//           ),
//           Container(
//              margin: EdgeInsets.only(left: 50),
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10), color: Color.fromARGB(255, 184, 81, 145)),
//             child: const Padding(
//               padding: EdgeInsets.all(8.0),
//               child: Text(
//                 "Type of Flower",
//                 style: TextStyle(color: Colors.white, fontSize: 25),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/main.dart';

void main ()
{
  runApp(MyApp());
}

  class MyApp extends StatelessWidget
{
 @override
  Widget build(BuildContext context)
  {
    return MaterialApp(home: HomePage(),);
  }
}

void display()
{
  print('WELCOME');
}
class HomePage extends StatefulWidget
{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey <FormState> _key=GlobalKey();
String searchValue='your search will apper here';
String prodImage='';
List  foundedresult=[];
Map product={
'Sun flower':{'title':'this is sun flower','image':'https://www.highmowingseeds.com/media/catalog/product/cache/6cbdb003cf4aae33b9be8e6a6cf3d7ad/7/1/7104-1.jpg'},

'Rose flower':{'title':'this is rose flower','image':'https://m.media-amazon.com/images/I/41AunJOrP1L.jpg'},

'Spider flower':{'title':'this is spider flower','image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_EgxNyr8jBHioEsa0cn3rIKJC3qNKsIQRMQ&s'},

'Tulip':{'title':'this is tulip flower','image':'https://assets.florista.ph/uploads/product-pics/2065_18_2065.webp'}


};
  @override
  
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar:PreferredSize(
          preferredSize: Size.fromHeight(80.0),
      child: AppBar(
        backgroundColor:Color.fromRGBO(125, 12, 121, 1),
        leading: Container(
          margin: EdgeInsets.only(left: 10,bottom: 10),
          child: CircleAvatar(
           radius: 55,
            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWlQ4x2xmTPgfq2OzGZAsxFjLpp0hjM1UALg&s'),
        )),
        title:Container(
          margin: EdgeInsets.only(left: 40,bottom: 10),
          child: Text('Flowers',style:TextStyle(color:Color.fromARGB(255, 60, 179, 234),fontSize:35))),
        actions: [Container(
          margin: EdgeInsets.only(bottom: 10,right: 10),
          child: ElevatedButton(onPressed:() => {display()}, child:Text('press'),
          style:ElevatedButton.styleFrom(padding: EdgeInsets.only(top:10,bottom:10),backgroundColor:Color.fromARGB(255, 245, 173, 239)),),
        )])),
       body:ListView(
        children: [
          SizedBox(
            height: 20,
          ),

        Container(
          width: 400,
          height: 200,
          color: Color.fromARGB(255, 227, 165, 218),
          child: Image.network('https://www.gardenia.net/wp-content/uploads/2023/05/types-of-flowers.webp',width: 100,height: 100,fit: BoxFit.contain,)),

          TextField(
            onChanged: (x)
            {
              List productList=product.keys.toList();
              List result=[];
              //? print(productList);
              bool found=false;
              for(var i=0;i<productList.length;i++)
              {
                if(productList[i].contains(x))
                {
                  result.add(product[productList[i]]);
                  found=true;
                }
              }
             //? print(result);

              if(found==false)
              {
                result=[];
                print('not found');
              }

              setState(() {
                foundedresult=result;
                print(foundedresult);
                print(foundedresult.isEmpty);
              });   
            },
            decoration: InputDecoration(
              label: Text('search'),
              hintText: 'search for item',
              icon:Icon(Icons.search),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          //?Text(searchValue),
          !foundedresult.isEmpty ? Container(
            child: ListView.builder(
              itemCount: foundedresult.length,
              itemBuilder: (context, index) {

                // return ListTile
                // (
                //  leading: 
                //     Image.network(foundedresult[index]['image'],fit: BoxFit.fill ),
                //     title:Text(foundedresult[index]['title']),
                  
                // );
                return Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Column(
              children: [
                Image.network(foundedresult[index]['image'],fit: BoxFit.fill ),
                Text(foundedresult[index]['title']),
              ],
            ),
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 5,
            margin: EdgeInsets.all(10),
          );

          
              },
            ),
            )
            :Text('no image found'),
         
          
       ],
       
    ),
    );
  }
}
     