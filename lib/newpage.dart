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
    Text(
      'Index 3: Settings',
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
   
   appBar:PreferredSize(
          preferredSize: Size.fromHeight(90.0),
      child: AppBar(
        backgroundColor:Color.fromRGBO(64, 63, 64, 1),
        leading: Container(
          padding: EdgeInsets.only(right:35),
          width: 100,
          height: 100,
          margin: EdgeInsets.only(bottom: 20,right:20.5),
          child:Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
             IconButton(onPressed:()
            {
             
            }, 
            icon:Icon(Icons.navigate_before,color:Color.fromARGB(255, 218, 211, 111),size:40,),
             padding: EdgeInsets.all(1),
            ),
            Text('back',style: TextStyle(color:Color.fromARGB(255, 218, 211, 111),fontSize:19,fontWeight: FontWeight.bold)),
            
                    
              ],
            ),
          ),
          ),
        title:Center(
          child: Container(
            margin: EdgeInsets.only(right: 40,top: 35),
            child: Text('Drivers List',style:TextStyle(color:Color.fromARGB(255, 247, 218, 112),fontSize:25,fontWeight: FontWeight.bold),)),
        ),
        )),

        body:Column(
          children: [
            Container(
              color:Color.fromARGB(255, 19, 36, 44),
              width: 500,
              height: 632.9,  
              child:Column(children: [
                Text('Sort By',
                style:TextStyle(fontSize:35,color:Color.fromARGB(255, 218, 211, 111),fontWeight: FontWeight.bold),textAlign:TextAlign.left,),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(borderRadius:BorderRadius.circular(5),color:Color.fromARGB(255, 132, 132, 132) ),
                       padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(10),
                      width: 100,
                      height:30 ,
                      child:Text('Name',textAlign:TextAlign.center,style:TextStyle(color:Color.fromARGB(255, 218, 211, 111),fontWeight: FontWeight.bold),),
                    ),
                     Container(
                       padding: EdgeInsets.all(5),
                     decoration: BoxDecoration(borderRadius:BorderRadius.circular(5),color:Color.fromARGB(255, 132, 132, 132) ),
                      margin: EdgeInsets.all(10),
                      width: 100,
                      height:30 ,
                      child:Text('Rating',textAlign:TextAlign.center,style:TextStyle(color:Color.fromARGB(255, 218, 211, 111),fontWeight: FontWeight.bold)),
                    ),
                     Container(
                      decoration: BoxDecoration(borderRadius:BorderRadius.circular(5),color:Color.fromARGB(255, 132, 132, 132) ),
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(10),
                      width: 100,
                      height:30 ,
                      child:Text('Jobs Done',textAlign:TextAlign.center,style:TextStyle(color:Color.fromARGB(255, 218, 211, 111),fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                
                Container(
                  margin: EdgeInsets.only(top: 19),
                  child:Row(
                    children: [
                      CircleAvatar(
                       radius: 40,
                       backgroundImage: NetworkImage('https://www.topgear.com/sites/default/files/cars-car/carousel/2019/09/hyundai-new-ioniq-electric-02.jpg'),
                       ),
                       Container(
                        margin: EdgeInsets.all(10),
                        child:Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 40),
                              child: Row(
                                children: [
                                  IconButton(icon:Icon(Icons.star,color:Color.fromARGB(255, 218, 211, 111),),
                              onPressed: ()
                              {}
                              ,),
                              Text('5.0 (34)',style:TextStyle(color:Color.fromARGB(255, 218, 211, 111)))
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child:Text('Ahmad Ali',style:TextStyle(color:Color.fromARGB(255, 218, 211, 111),fontSize:20,fontWeight: FontWeight.bold),),
                            ),
                             Container(
                              margin: EdgeInsets.only(left: 10),
                              child:Text('Lahore,Pakistan',style:TextStyle(color:Color.fromARGB(255, 218, 211, 111),fontSize:15,fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),
                       ),

                       Container(
                        margin: EdgeInsets.only(left: 70),
                        child:IconButton(
                          onPressed:()
                        {
                           setState(() {
                            _iconColor= _iconColor==Colors.grey ?Color.fromARGB(255, 218, 211, 111):Colors.grey;
                             });
                        },
                         icon: Icon(Icons.favorite,size:60,color: _iconColor,),
                ),
                       ),
                    ],
                  ),
                ),
                 Divider(
            height:10,
            indent: 20,
            endIndent: 0,
            color: Color.fromARGB(255, 255, 255, 255),
          ),

          Container(
                  margin: EdgeInsets.only(top: 19),
                  child:Row(
                    children: [
                      CircleAvatar(
                       radius: 40,
                       backgroundImage: NetworkImage('https://www.usatoday.com/gcdn/-mm-/9ffc731fbca6d75782258df5b6c023afc94ec5bd/c=394-714-5329-3502/local/-/media/2016/09/22/USATODAY/USATODAY/636101490961434386-leaf.JPG?width=660&height=373&fit=crop&format=pjpg&auto=webp'),
                       ),
                       Container(
                        margin: EdgeInsets.all(10),
                        child:Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 40),
                              child: Row(
                                children: [
                                  IconButton(icon:Icon(Icons.star,color:Color.fromARGB(255, 218, 211, 111),),
                              onPressed: ()
                              {}
                              ,),
                              Text('4.7 (44)',style:TextStyle(color:Color.fromARGB(255, 218, 211, 111)))
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child:Text('Amjad Khan',style:TextStyle(color:Color.fromARGB(255, 218, 211, 111),fontSize:20,fontWeight: FontWeight.bold),),
                            ),
                             Container(
                              margin: EdgeInsets.only(left: 10),
                              child:Text('Lahore,Pakistan',style:TextStyle(color:Color.fromARGB(255, 218, 211, 111),fontSize:15,fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),
                       ),

                       Container(
                        margin: EdgeInsets.only(left: 70),
                        child:IconButton(
                          onPressed:()
                        {
                         setState(() {
                          
                            _iconColor= _iconColor==Colors.grey ?Color.fromARGB(255, 218, 211, 111):Colors.grey;
                             });
                        },
                         icon: Icon(Icons.favorite,size:60,color: _iconColor,),
                ),
                       ),
                    ],
                  ),
                ),
                 Divider(
            height:10,
            indent: 20,
            endIndent: 0,
            color: Color.fromARGB(255, 255, 255, 255),
          ),

          Container(
                  margin: EdgeInsets.only(top: 19),
                  child:Row(
                    children: [
                      CircleAvatar(
                       radius: 40,
                       backgroundImage: NetworkImage('https://www.elcarrocolombiano.com/wp-content/uploads/2019/11/20191122-KIA-NIRO-HYBRID-2020-01.jpg'),
                       ),
                       Container(
                        margin: EdgeInsets.all(10),
                        child:Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 40),
                              child: Row(
                                children: [
                                  IconButton(icon:Icon(Icons.star,color:Color.fromARGB(255, 218, 211, 111),),
                              onPressed: ()
                              {}
                              ,),
                              Text('4.1 (18)',style:TextStyle(color:Color.fromARGB(255, 218, 211, 111)))
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child:Text('Hamza Amir',style:TextStyle(color:Color.fromARGB(255, 218, 211, 111),fontSize:20,fontWeight: FontWeight.bold),),
                            ),
                             Container(
                              margin: EdgeInsets.only(left: 10),
                              child:Text('Lahore,Pakistan',style:TextStyle(color:Color.fromARGB(255, 218, 211, 111),fontSize:15,fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),
                       ),

                       Container(
                        margin: EdgeInsets.only(left: 70),
                        child:IconButton(
                          onPressed:()
                        {
                          setState(() {
                            _iconColor= _iconColor==Colors.grey ?Color.fromARGB(255, 218, 211, 111):Colors.grey;
                             });
                        },
                         icon: Icon(Icons.favorite,size:60,color: _iconColor,),
                ),
                       ),
                    ],
                  ),
                ),
                 Divider(
            height:10,
            indent: 20,
            endIndent: 0,
            color: Color.fromARGB(255, 255, 255, 255),
          ),

              ],
              ),
            ),
             
           
          ],
        ),

        bottomNavigationBar:
            
                BottomNavigationBar(
                  items:const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    backgroundColor:Color.fromRGBO(64, 63, 64, 1),
                    icon: Icon(Icons.home,color:Color.fromARGB(255, 247, 222, 98)),
                    label: 'home',),
                  BottomNavigationBarItem(
                    backgroundColor:Color.fromRGBO(64, 63, 64, 1),
                    icon: Icon(Icons.message,color:Color.fromARGB(255, 247, 222, 98),),
                    label: 'message',
                  ), 
                 
                  BottomNavigationBarItem(
                     backgroundColor:Color.fromRGBO(64, 63, 64, 1),
                    icon: Icon(Icons.search,color:Color.fromARGB(255, 247, 222, 98),),
                    label: 'search',
                  ),
                  BottomNavigationBarItem(
                     backgroundColor:Color.fromRGBO(64, 63, 64, 1),
                    icon: Icon(Icons.arrow_back_rounded,color:Color.fromARGB(255, 247, 222, 98)),
                    label: 'previous hires',
                  ),
                  BottomNavigationBarItem(
                     backgroundColor:Color.fromRGBO(64, 63, 64, 1),
                    icon: Icon(Icons.person_rounded,color:Color.fromARGB(255, 247, 222, 98)),
                    label: 'profile',
                  ),
                           ],
                currentIndex: _selectedIndex,
                selectedItemColor: Colors.amber[800],
                onTap: _onItemTapped,
                           ),
     
  );
 }
}