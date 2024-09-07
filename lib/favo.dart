// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   List<String> items = ['Item 1', 'Item 2', 'Item 3']; // List of items
//   List<String> favoriteItems = []; // List to hold favorite items

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Items List'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.favorite),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => FavoritesPage(favoriteItems: favoriteItems),
//                 ),
//               );
//             },
//           ),
//         ],
//       ),
//       body: ListView.builder(
//         itemCount: items.length,
//         itemBuilder: (context, index) {
//           final item = items[index];
//           return ListTile(
//             title: Text(item),
//             trailing: IconButton(
//               icon: Icon(
//                 favoriteItems.contains(item) ? Icons.favorite : Icons.favorite_border,
//                 color: favoriteItems.contains(item) ? Colors.red : null,
//               ),
//               onPressed: () {
//                 setState(() {
//                   if (favoriteItems.contains(item)) {
//                     favoriteItems.remove(item);
//                   } else {
//                     favoriteItems.add(item);
//                   }
//                 });
//               },
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// class FavoritesPage extends StatelessWidget {
//   final List<String> favoriteItems;

//   FavoritesPage({required this.favoriteItems});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Favorites'),
//       ),
//       body: ListView.builder(
//         itemCount: favoriteItems.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(favoriteItems[index]),
//           );
//         },
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   bool isFavorite = false; // Track if the item is a favorite

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Item Page'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.favorite),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => FavoritesPage(isFavorite: isFavorite),
//                 ),
//               );
//             },
//           ),
//         ],
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('Item 1'),
//             IconButton(
//               icon: Icon(
//                 isFavorite ? Icons.favorite : Icons.favorite_border,
//                 color: isFavorite ? Colors.red : null,
//               ),
//               onPressed: () {
//                 setState(() {
//                   isFavorite = !isFavorite;
//                 });
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class FavoritesPage extends StatelessWidget {
//   final bool isFavorite;

//   FavoritesPage({required this.isFavorite});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Favorites Page'),
//       ),
//       body: Center(
//         child: isFavorite
//             ? Text('Item 1 is in your favorites')
//             : Text('No items in your favorites'),
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
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Travel App'),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FavoritesPage(),
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.calendar_today),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SchedulePage(),
                ),
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          CategoryTile(
            title: 'Recommended Places',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PlacesPage(category: 'Recommended Places'),
                ),
              );
            },
          ),
          CategoryTile(
            title: 'Nearby Places',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PlacesPage(category: 'Nearby Places'),
                ),
              );
            },
          ),
          CategoryTile(
            title: 'Most Popular',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PlacesPage(category: 'Most Popular'),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  CategoryTile({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: Icon(Icons.arrow_forward),
      onTap: onTap,
    );
  }
}

class PlacesPage extends StatelessWidget {
  final String category;

  PlacesPage({required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category),
      ),
      body: ListView(
        children: [
          DestinationTile(destination: 'Destination 1'),
          DestinationTile(destination: 'Destination 2'),
          DestinationTile(destination: 'Destination 3'),
        ],
      ),
    );
  }
}

class DestinationTile extends StatefulWidget {
  final String destination;

  DestinationTile({required this.destination});

  @override
  _DestinationTileState createState() => _DestinationTileState();
}

class _DestinationTileState extends State<DestinationTile> {
  bool isFavorite = false;
  bool isScheduled = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.destination),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: isFavorite ? Colors.red : null,
            ),
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
          ),
          IconButton(
            icon: Icon(
              isScheduled ? Icons.calendar_today : Icons.calendar_today_outlined,
              color: isScheduled ? Colors.blue : null,
            ),
            onPressed: () {
              setState(() {
                isScheduled = !isScheduled;
              });
            },
          ),
        ],
      ),
    );
  }
}

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      body: Center(
        child: Text('Your favorite destinations will appear here.'),
      ),
    );
  }
}

class SchedulePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Schedule'),
      ),
      body: Center(
        child: Text('Your scheduled trips will appear here.'),
      ),
    );
  }
}