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
  //String searchValue='';
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey <FormState> _key=GlobalKey();
String searchValue='your search will apper here';
 String prodImage='';
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
       body:Column(
        children: [
          SizedBox(
            height: 20,
          ),

        Container(
          width: 400,
          height: 200,
          color: Color.fromARGB(255, 211, 159, 204),
          child: Image.network('https://www.gardenia.net/wp-content/uploads/2023/05/types-of-flowers.webp',width: 100,height: 100,fit: BoxFit.contain,)),

          TextField(
            onChanged: (x)
            {
              if (product.keys.contains(x)) 
             { 
              searchValue=product[x]['title'];
              prodImage=product[x]['image'];
             }
             else{
              print('product not found');
             }
              setState(() {
                // if(x=='')
                // {
                //  searchValue='your search will appear here';
                // }
                // else
                // {
                //  searchValue= x;
                // }

                  searchValue=searchValue;
                  prodImage=prodImage;
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
          prodImage !='' ?Column(children: [Text(searchValue),Image.network(prodImage)],) : Text('item not found'),
          
          Form(
            key: _key ,
            child: Column(
            children: [
              TextFormField
            (
              onSaved: (value)
              {
               print(value);
              },
              validator: (value) {
                print('name is missing');
              },
              decoration: InputDecoration(label: Text('enter your name')),

            ),
            
             TextFormField
            (
              onSaved: (newvalue)
              {
               print(newvalue);
              },
              validator: (value) {
                print('email is missing');
              },
              decoration: InputDecoration(label: Text('enter your email')),

            ),

             FormField(
              builder: (FormFieldState)
              {
                return Checkbox(value: true,onChanged: (value) => {});
              }
              
              ),
            ElevatedButton(
              onPressed: ()
              {
                if(_key.currentState!.validate())
                {
                  _key.currentState!.save();
                  print('form saved');
                }
              },
              child:Text('submit'),
              
              ),

             


          ],)),
          
          ],
       
    ),
    );
  }
}
     