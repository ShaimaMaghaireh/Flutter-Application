import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/main.dart';
import 'package:flutter_application_2/page1.dart';
import 'package:flutter_application_2/data.dart';


void main ()
{
  runApp(MyApp());
}

  class MyApp extends StatelessWidget
{
 @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      routes:
      {
       '/page1': (context) => PageOne (),
      } ,
      initialRoute:'/page1' ,
      home: HomePage(),);
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

 class _HomePageState extends State<HomePage>
   {
//   final GlobalKey <FormState> _key=GlobalKey();
// String searchValue='your search will apper here';
// String prodImage='';
// List  foundedresult=[]; 
// Map product=Data.product;
// GlobalKey <FormState> _formkey = GlobalKey <FormState>();
// String updatedtitle='';
// String updatedimage='';
// void deleteCard(int index) 
// {
//     setState(()
//     {
//       foundedresult.removeAt(index);
//     });
// }
  @override
  
  Widget build(BuildContext context)
  {

 final GlobalKey <FormState> _key=GlobalKey();
String searchValue='your search will apper here';
String prodImage='';
List  foundedresult=[]; 
Map product=Data.product;
GlobalKey <FormState> _formkey = GlobalKey <FormState>();
String updatedtitle='';
String updatedimage='';
String updatedprice='';

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
         child:
          ElevatedButton(onPressed:() => {Navigator.pushNamed(context,'/page1')}, child:Text('Add new'),
          style:ElevatedButton.styleFrom(padding: EdgeInsets.only(top:10,bottom:10),backgroundColor:Color.fromARGB(255, 245, 173, 239)),),
        )])),

       body:ListView
       (
        children: [
          SizedBox(
            height: 20,
          ),

        Container(
          width: 400,
          height: 200,
          color: Color.fromARGB(255, 227, 165, 218),
          child: Image.network('https://www.gardenia.net/wp-content/uploads/2023/05/types-of-flowers.webp',width: 100,height: 100,fit: BoxFit.contain,)
          ),

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

      //     ListView.builder(
      //         itemCount: foundedresult.length,
      //         itemBuilder: (context, index) 
      //         {
      //           return Card(
      //       clipBehavior: Clip.antiAliasWithSaveLayer,
      //       child: Column(
      //         children: [
      //           Image.network(product[index]['image'],fit: BoxFit.fill ),
      //           Text(product[index]['title'],),
      //            Text(product[index]['price'],),
      //           IconButton(
      //           icon: Icon(Icons.delete,color:Color.fromARGB(230, 165, 14, 14),size:25,),
      //           onPressed: () {
      //            //deleteCard(index);
      //            String? keytoremove;
      //            product.forEach((key, value)
      //            {
      //             if(value == foundedresult[index])
      //             {
      //               keytoremove=key;
      //               print(keytoremove);
      //             }
      //            });
      //            setState(() {
      //             foundedresult.removeAt(index);
      //              product.remove(keytoremove);
      //            });
      //           },
      //         ),
              
      //         IconButton( icon: Icon(Icons.update,color:Color(0xE6F7AA23),size:25,),
      //         onPressed: () {
      //           String? keytoremove;
      //            product.forEach((key, value)
      //            {
      //             if(value == foundedresult[index])
      //             {
      //               keytoremove=key;
      //               print(keytoremove);
      //             }
      //            });
                
      //        showDialog<String>(
      //   context: context,
      //   builder: (BuildContext context) => AlertDialog(
      //     title: Text('You want to update ${keytoremove}'),

      //     content: Form(
      //       key: _formkey,
      //       child:Container(
      //       width:200,
      //       height: 200,
      //       child: Column(children:
      //       [
      //         TextFormField(
      //         decoration: InputDecoration(labelText:'Product Title ',icon:Icon(Icons.edit)),
      //         onSaved:(newvalue)
      //         {
      //           setState(() {
      //             updatedtitle = newvalue!;
      //           });
      //         },
      //         initialValue: foundedresult[index]['title'],),

      //         TextFormField(
      //        decoration: InputDecoration(labelText:'Product Image ',icon:Icon(Icons.image)),
      //        onSaved:(newvalue)
      //         {
      //           setState(() {
      //             updatedimage = newvalue!;
      //           });
      //         },
      //        initialValue: foundedresult[index]['image'] ),

      //        TextFormField(
      //        decoration: InputDecoration(labelText:'Product Price ',icon:Icon(Icons.price_change)),
      //        onSaved:(newvalue)
      //         {
      //           setState(() {
      //             updatedprice = newvalue!;
      //           });
      //         },
      //        initialValue: foundedresult[index]['price'] ),
      //       ],),
      //     )),

      //     actions: <Widget>[
      //       TextButton(
      //         onPressed: () => Navigator.pop(context, 'Cancel'),
      //         child: const Text('Cancel'),
      //       ),
      //       TextButton(
      //         onPressed: ()
      //         {
      //           if(_formkey.currentState!.validate())
      //           {
      //             _formkey.currentState!.save();
      //             print('Title: $updatedtitle, Image: $updatedimage,Price: $updatedprice');
      //           }
      //           String? keytoremove;
      //            product.forEach((key, value)
      //            {
      //             if(value == foundedresult[index])
      //             {
      //               keytoremove=key;
      //               print(keytoremove);
      //             }
      //            });
      //           product[keytoremove]={'title':updatedtitle,'image':updatedimage};
      //           Navigator.pop(context, 'Update');
      //         },
      //         child: const Text('Update'),
      //       ),
      //     ],
      //   ),
          
      // );
      // }
      // ),
                
      //         ],
      //       ),
      //       shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(10.0),
      //       ),
      //       elevation: 5,
      //       margin: EdgeInsets.all(10),
      //     );
      //      },
      //       ),

          SizedBox(
            height: 20,
          ),
          //?Text(searchValue),
          !foundedresult.isEmpty ? Container(
            width: 300,
            height: 400,
            child: ListView.builder(
              itemCount: foundedresult.length,
              itemBuilder: (context, index) 
              {
                return Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Column(
              children: [
                Image.network(foundedresult[index]['image'],fit: BoxFit.fill ),
                Text(foundedresult[index]['title'],),
                 Text(foundedresult[index]['price'],),
                IconButton(
                icon: Icon(Icons.delete,color:Color.fromARGB(230, 165, 14, 14),size:25,),
                onPressed: () {
                 //deleteCard(index);
                 String? keytoremove;
                 product.forEach((key, value)
                 {
                  if(value == foundedresult[index])
                  {
                    keytoremove=key;
                    print(keytoremove);
                  }
                 });
                 setState(() {
                  foundedresult.removeAt(index);
                   product.remove(keytoremove);
                 });
                },
              ),
              
              IconButton( icon: Icon(Icons.update,color:Color(0xE6F7AA23),size:25,),
              onPressed: () {
                String? keytoremove;
                 product.forEach((key, value)
                 {
                  if(value == foundedresult[index])
                  {
                    keytoremove=key;
                    print(keytoremove);
                  }
                 });
                
             showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: Text('You want to update ${keytoremove}'),

          content: Form(
            key: _formkey,
            child:Container(
            width:200,
            height: 200,
            child: Column(children:
            [
              TextFormField(
              decoration: InputDecoration(labelText:'Product Title ',icon:Icon(Icons.edit)),
              onSaved:(newvalue)
              {
                setState(() {
                  updatedtitle = newvalue!;
                });
              },
              initialValue: foundedresult[index]['title'],),

              TextFormField(
             decoration: InputDecoration(labelText:'Product Image ',icon:Icon(Icons.image)),
             onSaved:(newvalue)
              {
                setState(() {
                  updatedimage = newvalue!;
                });
              },
             initialValue: foundedresult[index]['image'] ),

             TextFormField(
             decoration: InputDecoration(labelText:'Product Price ',icon:Icon(Icons.price_change)),
             onSaved:(newvalue)
              {
                setState(() {
                  updatedprice = newvalue!;
                });
              },
             initialValue: foundedresult[index]['price'] ),
            ],),
          )),

          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: ()
              {
                if(_formkey.currentState!.validate())
                {
                  _formkey.currentState!.save();
                  print('Title: $updatedtitle, Image: $updatedimage,Price: $updatedprice');
                }
                String? keytoremove;
                 product.forEach((key, value)
                 {
                  if(value == foundedresult[index])
                  {
                    keytoremove=key;
                    print(keytoremove);
                  }
                 });
                product[keytoremove]={'title':updatedtitle,'image':updatedimage};
                Navigator.pop(context, 'Update');
              },
              child: const Text('Update'),
            ),
          ],
        ),
          
      );
      }
      ),
                
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
          ) : Text('no image found'), 
       ],
    ),
    );
  }
}