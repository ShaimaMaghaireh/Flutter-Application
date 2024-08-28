import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'Tasks.dart';

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
  GlobalKey<FormState> _key=GlobalKey<FormState>();
  List<Map> allUsers=[{'username':'admin','password':'admin'},
  {'username':'user','password':'user'}];

  String username='';
  String password='';

   @override
   Widget build(BuildContext context)
   {
    return Scaffold(
      body:Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
            Form(
            key: _key,
            child:Column(
        children: [
         TextFormField(
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
         decoration: InputDecoration(label:Text('Username')),
         
         ),
         TextFormField(onSaved: (newValue) {
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
         decoration: InputDecoration(label:Text('Password')),
         
         ),
         ElevatedButton(onPressed:()
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
              // Navigator.push(context,newpage());
            }
            else{
              print('Logged in failed');
            }
          }
         },
          child: Text('Login')),
],
          ))
          ],
        ),
      )
      );
  
   }
}
 