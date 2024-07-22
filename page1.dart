import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/main.dart';
import 'lib/data.dart';

class newproduct
{
  String name;
  String image;
   String key;
   newproduct({ required this.image, required this.key, required this.name,});
}
class PageOne extends StatefulWidget
{
  @override
 _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne>
{
  GlobalKey <FormState> formkey = GlobalKey <FormState>();
  String productname='';
  String productimage='';
  String productkey='';
  String pageString='this is page one';
  @override
  // TODO: implement widget
  Widget build(BuildContext context)
  {
   return Scaffold(
     body: Container(
      width: 400,
      height: 500,
       child: Column(
        children: 
        [
          Form(
            key: formkey,
            child:Column(children: 
        [
         Text('add product'),
         TextFormField
         (
          validator: (value)
          {
            if(value!.isEmpty)
            {
              return'Product name is required';
            }
               
               return null;
          },
          onSaved: (newValue) 
          {
            setState(() {
              productname= newValue!;
            });
          },
          decoration: InputDecoration(labelText:'product name',icon:Icon(Icons.edit),),
         ),
         TextFormField
         (
           validator: (value)
          {
            if(value!.isEmpty)
            {
              return'Product image is required';
            }
               
             return null;
          },
          onSaved: (newValue) 
          {
            setState(() {
              productimage= newValue!;
            });
          },
           decoration: InputDecoration(labelText:'product image',icon:Icon(Icons.image), ),
         ),
         TextFormField
         (
           validator: (value)
          {
            if(value!.isEmpty)
            {
              return'Product key is required';
            }
               
               return null;
          },
          onSaved: (newValue) 
          {
            setState(() {
              productkey= newValue!;
            });
          },
           decoration: InputDecoration(labelText:'product key',icon:Icon(Icons.key), ),
         ),
         ElevatedButton(onPressed:()
         {
          if(formkey.currentState!.validate())
          {
            formkey.currentState!.save();
            print(productimage);
            print(productname);
            Map newproduct= {
              productkey:
             { 'image': productimage, 'title': productname}};
            //print(newproduct);
            // Navigator.pop(context,newproduct);
             //return ;
             Data.product.addAll(newproduct);
             print(Data.product);

          }
          setState(() {
            
          });
         },
          child: Text('Add product')),
        ],))],
       ),
     ),
   );
    
  }
}
