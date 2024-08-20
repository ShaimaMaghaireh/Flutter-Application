// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Coffee Shop Menu',
//       theme: ThemeData(
//         primarySwatch: Colors.brown,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _currentIndex = 0;

//   final List<String> imgList =
//   [
//     'https://t4.ftcdn.net/jpg/01/16/61/93/360_F_116619399_YA611bKNOW35ffK0OiyuaOcjAgXgKBui.jpg',
//     'https://static.toiimg.com/photo/89078867.cms',
//     'https://sandtoncentral.co.za/blog/wp-content/uploads/2023/11/image002-3.webp',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Coffee Shop Menu'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: PageView.builder(
//               itemCount: imgList.length,
//               onPageChanged: (index) {
//                 setState(() {
//                   _currentIndex = index;
//                 });
//               },
//               itemBuilder: (context, index) {
//                 return GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => ProductDetailsPage(
//                           imagePath: imgList[index],
//                           productName:
//                            'Coffee ${index + 1}',
//                         ),
//                       ),
//                     );
//                   },
//                   child: Image.network(
//                     imgList[index],
//                     fit: BoxFit.cover,
//                   ),
//                 );
//               },
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: List.generate(imgList.length, (index) {
//               return Container(
//                 width: 8.0,
//                 height: 8.0,
//                 margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: _currentIndex == index
//                       ? Colors.black
//                       : Colors.black.withOpacity(0.4),
//                 ),
//               );
//             }),
//           ),
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.local_cafe),
//             label: 'Menu',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite),
//             label: 'Favorites',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings),
//             label: 'Settings',
//           ),
//         ],
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//       ),
//     );
//   }
// }

// class ProductDetailsPage extends StatefulWidget {
//   final String imagePath;
//   final String productName;

//   ProductDetailsPage({required this.imagePath, required this.productName});

//   @override
//   _ProductDetailsPageState createState() => _ProductDetailsPageState();
// }

// class _ProductDetailsPageState extends State<ProductDetailsPage> {
//   double rating = 0.0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.productName),
//       ),
//       body: Column(
//         children: [
//           Image.network(widget.imagePath, fit: BoxFit.cover),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Text(
//               widget.productName,
//               style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Text(
//               'Description of the product goes here.',
//               style: TextStyle(fontSize: 16.0),
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: List.generate(5, (index) {
//               return IconButton(
//                 icon: Icon(
//                   index < rating ? Icons.star : Icons.star_border,
//                   color: Colors.amber,
//                 ),
//                 onPressed: () {
//                   setState(() {
//                     rating = index + 1.0;
//                   });
//                 },
//               );
//             }),
//           ),
//           Text('Rating: $rating'),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TransparentBottomNav(),
    );
  }
}

class TransparentBottomNav extends StatefulWidget {
  @override
  _TransparentBottomNavState createState() => _TransparentBottomNavState();
}

class _TransparentBottomNavState extends State<TransparentBottomNav> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background content
        Scaffold(
          backgroundColor: Colors.amber,
          extendBodyBehindAppBar: true,
          appBar: AppBar(title: Text('data'),backgroundColor: Colors.black,),
          body: Column(
            children: [
              Center(
                child: Column(
                  children: [
                   
                    Container(
                      width: 200,
                      decoration:   BoxDecoration(
              image: DecorationImage(image:
              NetworkImage('https://i.pinimg.com/736x/24/b2/cc/24b2cc4d4e096af9e40266a692e24e21.jpg'),
              fit: BoxFit.cover),
                      ),
                    )
                  ],
                ),
                
              ),
            ],
          ),
        ),
        // Bottom Navigation Bar
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.business),
                label: 'Business',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school),
                label: 'School',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.amber[800],
            onTap: _onItemTapped,
          ),
        ),
      ],
    );
  }
}