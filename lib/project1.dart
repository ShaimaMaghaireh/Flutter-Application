import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'menupage.dart';

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
    title: 'Coffee Shop Menu',
    theme:ThemeData(primarySwatch: Colors.brown),
    
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
  int _currentIndex = 0;
 
Color _iconColor=Colors.grey;
Color _iconColor1=Colors.grey;
Color _iconColor2=Colors.grey;
Color _iconColor3=Colors.grey;
Color _iconColor4=Colors.grey;
Color _iconColor5=Colors.grey;

@override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar:
      PreferredSize(preferredSize:  Size.fromHeight(80.0), child:
       AppBar(title:
       Container(
        width:200,
        margin: EdgeInsets.all(55),
        child: Text('Coffee Shop Menu',
        style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
        
        ),
      backgroundColor: Colors.brown,)
      ),
    
       body:ListView(
        children: [
          Container(
            color: const Color.fromARGB(255, 165, 120, 103),
            height: 250,
            width:260 ,
            child:Image.network('https://www.beveragedaily.com/var/wrbm_gb_food_pharma/storage/images/publications/food-beverage-nutrition/beveragedaily.com/news/markets/us-coffee-shop-market-grows-to-45.4bn-valuation-in-2018/8803729-1-eng-GB/US-coffee-shop-market-grows-to-45.4bn-valuation-in-2018.jpg',
              width:262,
            ),
          ),
          
          Container(
            width: 200,
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  width: 90,
                  height: 30,
                  child: Text('All coffee',textAlign: TextAlign.center,
                  style:TextStyle(fontSize:15,fontWeight: FontWeight.bold,color: Colors.white),),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: const Color.fromARGB(255, 167, 113, 93)),
                ),
                 Container(
                  margin: EdgeInsets.all(10),
                  width: 90,
                  height: 30,
                  child: Text('Latte ',textAlign: TextAlign.center,
                  style:TextStyle(fontSize:15,fontWeight: FontWeight.bold,color: Colors.white),),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: const Color.fromARGB(255, 167, 113, 93)),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  width: 90,
                  height: 30,
                  child: Text('Espresso',textAlign: TextAlign.center,
                  style:TextStyle(fontSize:15,fontWeight: FontWeight.bold,color: Colors.white),),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: const Color.fromARGB(255, 167, 113, 93)),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  width: 90,
                  height: 30,
                  child: Text('Cappuccino',textAlign: TextAlign.center,
                  style:TextStyle(fontSize:15,fontWeight: FontWeight.bold,color: Colors.white),),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: const Color.fromARGB(255, 167, 113, 93)),
                ),
                 Container(
                  margin: EdgeInsets.all(10),
                  width: 90,
                  height: 30,
                  child: Text('Mocca',textAlign: TextAlign.center,
                  style:TextStyle(fontSize:15,fontWeight: FontWeight.bold,color: Colors.white),),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: const Color.fromARGB(255, 167, 113, 93)),
                ),
                
              ],
            ),
            ],
            ),
          ),

          
              Container(
                width: 500,
                height: 600,
                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(8),
                       color: Color.fromRGBO(108, 78, 68, 1),
                      child: Stack(
                        children: [
                          Image.network('https://abeautifulmess.com/wp-content/uploads/2023/05/latte.jpg',
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

                             final snackBar = SnackBar(
                         content: const Text('Thanks for rating us!!'),
                           action: SnackBarAction(
                           label: 'Undo',
                         onPressed: () {
      // Some code to undo the change.
                      setState(() {
                          
                    _iconColor= _iconColor==Color.fromARGB(255, 218, 211, 111) ?Colors.grey :Color.fromARGB(255, 218, 211, 111);
                      });
    },
  ),
);
    
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                         icon: Icon(Icons.star,color: _iconColor,),
                ),
                              Text('5.0 (34)',style:TextStyle(color:Color.fromARGB(255, 254, 162, 3),fontWeight: FontWeight.bold))
                                ],
                       ),
                        bottom: 100,
                        
               ),
               Positioned(
                child: IconButton(
                icon: Icon(Icons.add_box_rounded,color: Color.fromARGB(255, 221, 120, 43),),
                onPressed: ()
               {
                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondPage()),
                 );
      
               },
            ),
                left: 100,
                top: 100,
                ),
                
                        ]
                      ),
                    ),

                    Container(
                      padding: const EdgeInsets.all(8),
                       color: Color.fromRGBO(108, 78, 68, 1),
                      child:Stack(
                        children: [
                          Image.network('https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/0f/14/ca/photo0jpg.jpg?w=1200&h=-1&s=1',
                          ),
                          Positioned(child:
                    Row(
                                children: [
                                IconButton(
                          onPressed:()
                        {
                           setState(() {
                            _iconColor1= _iconColor1==Colors.grey ?Color.fromARGB(255, 218, 211, 111):Colors.grey;
                             });
                            
                             final snackBar = SnackBar(
                         content: const Text('Thanks for rating us!!'),
                           action: SnackBarAction(
                           label: 'Undo',
                         onPressed: () {
                      // print('object');
                      setState(() {
              _iconColor1= _iconColor1==Color.fromARGB(255, 218, 211, 111) ?Colors.grey :Color.fromARGB(255, 218, 211, 111);
                      });
    },
  ),
);
    
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                           
                        },
                         icon: Icon(Icons.star,color: _iconColor1,),
                ),
                              Text('5.0 (34)',style:TextStyle(color:Color.fromARGB(255, 254, 162, 3),fontWeight: FontWeight.bold))
                                ],
                       ),
                        bottom: 100,
                        
               ),
                Positioned(
                child: IconButton(onPressed: ()
               {
                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondPage()),
                 );
               },
                icon: Icon(Icons.add_box_rounded,color: Color.fromARGB(255, 221, 120, 43),),
                ),
                left: 100,
                top: 100,
                ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                     color: Color.fromRGBO(108, 78, 68, 1),
                      child: Stack(
                        children: [
                          Image.network('https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/9a/ef/80/cafe-coffee-day.jpg?w=1200&h=-1&s=1',
                          ),
                         Positioned(child:
                    Row(
                                children: [
                                IconButton(
                          onPressed:()
                        {

                           setState(() {
                            _iconColor2= _iconColor2==Colors.grey ?Color.fromARGB(255, 218, 211, 111):Colors.grey;
                             });
                            
                             final snackBar = SnackBar(
                         content: const Text('Thanks for rating us!!'),
                           action: SnackBarAction(
                           label: 'Undo',
                         onPressed: () {
      // Some code to undo the change.
                      setState(() {
             _iconColor2= _iconColor2==Color.fromARGB(255, 218, 211, 111) ?Colors.grey :Color.fromARGB(255, 218, 211, 111);
                      });
    },
  ),
);
    
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                         icon: Icon(Icons.star,color: _iconColor2,),
                ),
                              Text('5.0 (34)',style:TextStyle(color:Color.fromARGB(255, 254, 162, 3),fontWeight: FontWeight.bold))
                                ],
                       ),
                        bottom: 100,
                        
               ),
                Positioned(
                child: IconButton(onPressed: ()
               {
                 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondPage()),
                 );
               },
                icon: Icon(Icons.add_box_rounded,color: Color.fromARGB(255, 221, 120, 43),),
                ),
                left: 100,
                top: 100,
                ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                       color: Color.fromRGBO(108, 78, 68, 1),
                      child: Stack(
                        children: [
                          Image.network('https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/ff/13/2c/photo1jpg.jpg?w=1200&h=-1&s=1',
                          ),
                          Positioned(child:
                    Row(
                                children: [
                                IconButton(
                          onPressed:()
                        {
                           setState(() {
                            _iconColor3= _iconColor3==Colors.grey ?Color.fromARGB(255, 218, 211, 111):Colors.grey;
                             });

                              final snackBar = SnackBar(
                         content: const Text('Thanks for rating us!!'),
                           action: SnackBarAction(
                           label: 'Undo',
                         onPressed: () {
      // Some code to undo the change.
                      setState(() {
             _iconColor3= _iconColor3==Color.fromARGB(255, 218, 211, 111) ?Colors.grey :Color.fromARGB(255, 218, 211, 111);
                      });
    },
  ),
);
    
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                         icon: Icon(Icons.star,color: _iconColor3,),
                ),
                              Text('5.0 (34)',style:TextStyle(color:Color.fromARGB(255, 254, 162, 3),fontWeight: FontWeight.bold))
                                ],
                       ),
                        bottom: 100,
                        
               ),
                Positioned(
                child: IconButton(onPressed: ()
               {
                 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondPage()),
                 );
               },
                icon: Icon(Icons.add_box_rounded,color: Color.fromARGB(255, 221, 120, 43),),
                ),
                left: 100,
                top: 100,
                ),

                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Color.fromRGBO(108, 78, 68, 1),
                      child: Stack(
                        children: [
                          Image.network('https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/1e/70/0a/mocha.jpg?w=1200&h=-1&s=1',
                          ),
                           Positioned(child:
                    Row(
                                children: [
                                IconButton(
                          onPressed:()
                        {
                           setState(() {
                            _iconColor4= _iconColor4==Colors.grey ?Color.fromARGB(255, 218, 211, 111):Colors.grey;
                             });
                             
                             final snackBar = SnackBar(
                         content: const Text('Thanks for rating us!!'),
                           action: SnackBarAction(
                           label: 'Undo',
                         onPressed: () {
      // Some code to undo the change.
                      setState(() {
            _iconColor4= _iconColor4==Color.fromARGB(255, 218, 211, 111) ?Colors.grey :Color.fromARGB(255, 218, 211, 111);
                      });
    },
  ),
);
    
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                         icon: Icon(Icons.star,color: _iconColor4,),
                ),
                              Text('5.0 (34)',style:TextStyle(color:Color.fromARGB(255, 254, 162, 3),fontWeight: FontWeight.bold))
                                ],
                       ),
                        bottom: 100,
                        
               ),
                Positioned(
                child: IconButton(onPressed: ()
               {
                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondPage()),
                 );
               },
                icon: Icon(Icons.add_box_rounded,color: Color.fromARGB(255, 221, 120, 43),),
                ),
                left: 100,
                top: 100,
                ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Color.fromRGBO(108, 78, 68, 1),
                      child:Stack(
                        children: [
                          Image.network('https://joyfoodsunshine.com/wp-content/uploads/2020/11/homemade-hot-chocolate-recipe-2.jpg',
                          ),
                          Positioned(child:
                    Row(
                                children: [
                                IconButton(
                          onPressed:()
                        {
                           setState(() {
                            _iconColor5= _iconColor5==Colors.grey ?Color.fromARGB(255, 218, 211, 111):Colors.grey;
                             });
                            
                             final snackBar = SnackBar(
                         content: const Text('Thanks for rating us!!'),
                           action: SnackBarAction(
                           label: 'Undo',
                         onPressed: () {
      // Some code to undo the change.
                      setState(() {
             _iconColor5= _iconColor5==Color.fromARGB(255, 218, 211, 111) ?Colors.grey :Color.fromARGB(255, 218, 211, 111);
                      });
    },
  ),
);
    
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                         icon: Icon(Icons.star,color: _iconColor5,),
                          ),
                              Text('5.0 (34)',style:TextStyle(color:Color.fromARGB(255, 254, 162, 3),fontWeight: FontWeight.bold))
                                ],
                       ),
                        bottom: 100,
                        
               ),
                Positioned(
                child: IconButton(onPressed: ()
               {
                 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondPage()),
                 );
               },
                icon: Icon(Icons.add_box_rounded,color: Color.fromARGB(255, 221, 120, 43),),
                ),
                left: 100,
                top: 100,
                ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
        ]
       ),
       bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.local_cafe),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

}
 
class SecondPage extends StatelessWidget {
  List menu=[
  {'image':'https://abeautifulmess.com/wp-content/uploads/2023/05/latte.jpg','name':'Espresso','price':'5 JD'},
  {'image':'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/0f/14/ca/photo0jpg.jpg?w=1200&h=-1&s=1','name':'Cuppocino','price':'4 JD'},
  {'image':'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/9a/ef/80/cafe-coffee-day.jpg?w=1200&h=-1&s=1','name':'Latte','price':'3 JD'},
  {'image':'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/ff/13/2c/photo1jpg.jpg?w=1200&h=-1&s=1','name':'Mocca','price':'4.5 JD'},
  {'image':'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/1e/70/0a/mocha.jpg?w=1200&h=-1&s=1','name':'Hot Chocolate','price':'2 JD'},
  {'image':'https://joyfoodsunshine.com/wp-content/uploads/2020/11/homemade-hot-chocolate-recipe-2.jpg','name':'Iced Mocca','price':'3.5 JD'}];
 
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('Menu '),
      ),
       body:  ListView(
        scrollDirection: Axis.horizontal,
      children: [
        Container(
          width: 700,
          height: 600,
          child: ListView.builder(
          // scrollDirection: Axis.horizontal,
          itemCount: menu.length,
          itemBuilder:(context,index)
          {
            return GestureDetector(
              onLongPress: () 
              {
                print('you long pressed on ${menu[index]['price']}');
              },
               
              onDoubleTap: () {
                print(' you choose ${menu[index]['name']}');
              },

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 
                 Row(
                children: [
                 
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.orangeAccent,),
                    margin: EdgeInsets.all(15),
                    width: 200,
                    height: 120,
                    child:Image.network(menu[index]['image'],width:90,height:80,),
                   
                  ),
                   Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.orangeAccent,),
                    margin: EdgeInsets.all(15),
                    width: 200,
                    height: 120,
                    child:  Text(menu[index]['name'].toString(),style: TextStyle(fontSize:30),textAlign: TextAlign.center,),
                    
                  ),
                   Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.orangeAccent,),
                    margin: EdgeInsets.all(15),
                   width: 200,
                    height: 120,
                    child:Column(children: [
                      Text(menu[index]['price'],style: TextStyle(fontSize:25),textAlign: TextAlign.center,),
                      IconButton(onPressed:()
                      {
                       
                      }, icon: Icon(Icons.payments_rounded),iconSize: 40,),
                    ],
                    ),
                    // child:  Text(menu[index]['price'],style: TextStyle(fontSize:25),textAlign: TextAlign.center,),
                  ),
                ],
              ),
           
                  
                ],
              ),
            );
          }
          ),
        ),
        ],
    ),
       
    );
  }
}