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
  Color _iconColor=Colors.grey;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack screen',),
      
      ),
      body: ListView(children: [
         Stack(
          children: [
            Container(
              decoration: BoxDecoration(borderRadius:BorderRadius.circular(5), color: const Color.fromARGB(255, 165, 202, 232), ),
            width: 500,
            height: 639.9,
            ),
            Container(
              decoration: BoxDecoration(borderRadius:BorderRadius.circular(5),color: Color.fromARGB(255, 98, 167, 223), ),
            margin: EdgeInsets.all(35),
            width: 300,
            height: 400,
            child: Image.network('https://i.insider.com/5a271fbf7101ad7b9647b9e4?width=600&format=jpeg&auto=webp'),

            ),
            Positioned(child:
            Text('Fuji Mountain',style: TextStyle(fontSize:30),),
              left: 39,
              top: 25,
             ),   
          ],
        ),
        Container(
          width: 300,
          height: 500,
          color: Colors.blueAccent,
          child: Stack(
            children: [
               Container(
                width: 300,
                height: 500,
                 child: GridView.count(
                   primary: false,
                   padding: const EdgeInsets.all(20),
                   crossAxisSpacing: 10,
                   mainAxisSpacing: 10,
                   crossAxisCount: 2,
                   children: <Widget>[
                     Container(
                       padding: const EdgeInsets.all(8),
                       color: Colors.teal[100],
                       child:  Image.network('https://media.timeout.com/images/101847695/image.jpg'),
                     ),
                     
                
                     Container(
                       padding: const EdgeInsets.all(8),
                       color: Colors.teal[200],
                       child:  Image.network('https://travelmaker1.b-cdn.net/wp-content/uploads/2020/06/Taiwan-Mountain.jpg'),
                     ),

              
                   ],
                 ),
                
               ),
               Positioned(child:
                    Row(
                                children: [
                                IconButton(
                          onPressed:()
                        {
                           setState(() {
                            _iconColor= _iconColor==Colors.grey ?Color.fromARGB(255, 218, 211, 111):Colors.grey;
                             });
                        },
                         icon: Icon(Icons.star,color: _iconColor,),
                ),
                              Text('5.0 (34)',style:TextStyle(color:Color.fromARGB(255, 218, 211, 111)))
                                ],
                       ),
                       left: 30,
                       top: 9,
               ),
              
            ],
           
          ), 
        ),
       
        // Stack(
        //   children: [
        //     Container(
        //       decoration: BoxDecoration(borderRadius:BorderRadius.circular(5), color: const Color.fromARGB(255, 165, 202, 232), ),
        //     width: 500,
        //     height: 639.9,
        //     ),
        //     Container(
        //       decoration: BoxDecoration(borderRadius:BorderRadius.circular(5),color: Color.fromARGB(255, 98, 167, 223), ),
        //     margin: EdgeInsets.all(35),
        //     width: 300,
        //     height: 400,
        //     child: Image.network('https://i.insider.com/5a271fbf7101ad7b9647b9e4?width=600&format=jpeg&auto=webp'),

        //     ),
        //     Positioned(child:
        //     Text('Fuji Mountain',style: TextStyle(fontSize:30),),
        //       left: 39,
        //       top: 25,
        //      ),   
        //   ],
        // ),
       
      // Container(
      //   width: 300,
      //   height: 400,
      //   child: ListView(
      //     children: [
      //     Image.network('https://blog.ecohotels.com/wp-content/uploads/2023/09/Mountain-Tourism4.jpg'),
      //      Image.network('https://travelmaker1.b-cdn.net/wp-content/uploads/2020/06/Taiwan-Mountain.jpg'),
      //   ],),
      // )

      ],
      ),
    );
  }
  
}