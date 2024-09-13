// import 'package:flutter/material.dart';

// void main() => runApp(InfoApp());

// class InfoApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: ItemListScreen(),
//     );
//   }
// }

// class ItemListScreen extends StatelessWidget {
//   final Map<String, String> _items = {
//     'Apple': 'Apple is a fruit that is very nutritious.',
//     'Banana': 'Banana is rich in potassium and very healthy.',
//     'Carrot': 'Carrot is a vegetable that improves eyesight.',
//     'Date': 'Date is a sweet fruit rich in iron.',
//   };

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Item List'),
//       ),
//       body: ListView.builder(
//         itemCount: _items.length,
//         itemBuilder: (context, index) {
//           String key = _items.keys.elementAt(index);
//           return ListTile(
//             title: Text(key),
//             onTap: () {
//               // Navigate to the information page and pass the selected item
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => InformationPage(
//                     itemName: key,
//                     itemInfo: _items[key]!,
//                   ),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }

// class InformationPage extends StatelessWidget {
//   final String itemName;
//   final String itemInfo;

//   InformationPage({required this.itemName, required this.itemInfo});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(itemName),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Container(
//           width:200,height: 200,color:Color.fromARGB(255, 116, 192, 230).withOpacity(0.4),
//           child: Text(
//             itemInfo,
//             style: TextStyle(fontSize: 18),
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() => runApp(CardApp());

// class CardApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: CardListScreen(),
//     );
//   }
// }

// class CardListScreen extends StatelessWidget {
//   final List<Map<String, String>> _cards = [
//     {
//       'title': 'Apple',
//       'description': 'Apple is a nutritious fruit.',
//       'additionalInfo': 'Apples are high in fiber and vitamin C.'
//     },
//     {
//       'title': 'Banana',
//       'description': 'Banana is a good source of potassium.',
//       'additionalInfo': 'Bananas can help improve digestion.'
//     },
//     {
//       'title': 'Carrot',
//       'description': 'Carrots are good for your eyes.',
//       'additionalInfo': 'Carrots contain beta carotene and vitamin A.'
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Cards List'),
//       ),
//       body: Container(
//         width: 500,height: 300,color:Colors.amber,
//         child: ListView.builder(
        
//           itemCount: _cards.length,
//           itemBuilder: (context, index) {
//             var cardItem = _cards[index];
//             return Card(
//               elevation: 4,
//               // margin: EdgeInsets.all(10),
//               child: ListTile(
//                 title: Text(cardItem['title']!),
//                 subtitle: Text(cardItem['description']!),
//                 onTap: () {
//                   // Navigate to the details page
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => DetailsPage(
//                         title: cardItem['title']!,
//                         description: cardItem['description']!,
//                         additionalInfo: cardItem['additionalInfo']!,
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// class DetailsPage extends StatelessWidget {
//   final String title;
//   final String description;
//   final String additionalInfo;

//   DetailsPage({
//     required this.title,
//     required this.description,
//     required this.additionalInfo,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               description,
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Additional Information:',
//               style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 10),
//             Text(
//               additionalInfo,
//               style: TextStyle(fontSize: 16),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() => runApp(CardApp());

// class CardApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: CardScreen(),
//     );
//   }
// }

// class CardScreen extends StatelessWidget {
//   final String title = 'Apple';
//   final String description = 'Apple is a nutritious fruit.';
//   final String additionalInfo = 'Apples are high in fiber and vitamin C.';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Card Example'),
//       ),
//       body: Center(
//         child: Card(
//           elevation: 4,
//           margin: EdgeInsets.all(16),
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 10),
//                 Text(
//                   description,
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 SizedBox(height: 10),
//                 ElevatedButton(
//                   onPressed: () {
//                     // Navigate to details page when card is pressed
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => DetailsPage(
//                           title: title,
//                           description: description,
//                           additionalInfo: additionalInfo,
//                         ),
//                       ),
//                     );
//                   },
//                   child: Text('More Details'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class DetailsPage extends StatelessWidget {
//   final String title;
//   final String description;
//   final String additionalInfo;

//   DetailsPage({
//     required this.title,
//     required this.description,
//     required this.additionalInfo,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               description,
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Additional Information:',
//               style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 10),
//             Text(
//               additionalInfo,
//               style: TextStyle(fontSize: 16),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class MapToCardList extends StatelessWidget {
//   // Sample Map
//   final Map<String, String> myMap = {
//     "name": "John",
//     "age": "30",
//     "city": "New York",
//     "job": "Developer",
//   };

//   @override
//   Widget build(BuildContext context) {
//     final List<MapEntry<String, String>> mapEntries = myMap.entries.toList();

//     return Scaffold(
//       appBar: AppBar(title: Text('Map to Card List')),
//       body: ListView.builder(
//         itemCount: mapEntries.length,
//         itemBuilder: (context, index) {
//           final entry = mapEntries[index];

//           return Card(
//             child: ListTile(
//               title: Text(entry.key),
//               subtitle: Text(entry.value),
//               onTap: () {
//                 // Navigate to Details page and pass the data
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => DetailsPage(
//                       title: entry.key,
//                       value: entry.value,
//                     ),
//                   ),
//                 );
//               },
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// class DetailsPage extends StatelessWidget {
//   final String title;
//   final String value;

//   // Constructor to receive data
//   DetailsPage({required this.title, required this.value});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Details Page')),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text('Title: $title', style: TextStyle(fontSize: 24)),
//             SizedBox(height: 16),
//             Text('Value: $value', style: TextStyle(fontSize: 20)),
//           ],
//         ),
//       ),
//     );
//   }
// }

// void main() => runApp(MaterialApp(home: MapToCardList()));

// import 'package:flutter/material.dart';

// class MapToCardList extends StatelessWidget {
//   // Sample Map
//   final Map<String, String> myMap = {
//     "ID001": "John, 30, New York",
//     "ID002": "Alice, 25, Los Angeles",
//     "ID003": "Bob, 35, Chicago",
//     "ID004": "Eve, 28, Miami",
//   };

//   @override
//   Widget build(BuildContext context) {
//     final List<MapEntry<String, String>> mapEntries = myMap.entries.toList();

//     return Scaffold(
//       appBar: AppBar(title: Text('Map to Card List')),
//       body: ListView.builder(
//         itemCount: mapEntries.length,
//         itemBuilder: (context, index) {
//           final entry = mapEntries[index];

//           return Card(
//             child: ListTile(
//               title: Text('ID: ${entry.key}'),
//               subtitle: Text('Details: ${entry.value}'),
//               onTap: () {
//                 // Navigate to Details page and pass the key-value pair
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => DetailsPage(
//                       id: entry.key,
//                       details: entry.value,
//                     ),
//                   ),
//                 );
//               },
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// class DetailsPage extends StatelessWidget {
//   final String id;
//   final String details;

//   // Constructor to receive data
//   DetailsPage({required this.id, required this.details});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Details Page')),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text('ID: $id', style: TextStyle(fontSize: 24)),
//             SizedBox(height: 16),
//             Text('Details: $details', style: TextStyle(fontSize: 20)),
//           ],
//         ),
//       ),
//     );
//   }
// }

// void main() => runApp(MaterialApp(home: MapToCardList()));

import 'package:flutter/material.dart';

class ToggleButtonsDemo extends StatefulWidget {
  @override
  _ToggleButtonsDemoState createState() => _ToggleButtonsDemoState();
}

class _ToggleButtonsDemoState extends State<ToggleButtonsDemo> {
  // Keep track of the currently selected index
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Button Color Toggle')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search places',
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.filter_list),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Popular places',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      selectedIndex = 0;
                    });
                  },
                  style: TextButton.styleFrom(
                    backgroundColor:
                        selectedIndex == 0 ? Colors.black : Colors.grey[300],
                  ),
                  child: Text(
                    'Most Viewed',
                    style: TextStyle(
                      color: selectedIndex == 0 ? Colors.white : Colors.black,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      selectedIndex = 1;
                    });
                  },
                  style: TextButton.styleFrom(
                    backgroundColor:
                        selectedIndex == 1 ? Colors.black : Colors.grey[300],
                  ),
                  child: Text(
                    'Nearby',
                    style: TextStyle(
                      color: selectedIndex == 1 ? Colors.white : Colors.black,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      selectedIndex = 2;
                    });
                  },
                  style: TextButton.styleFrom(
                    backgroundColor:
                        selectedIndex == 2 ? Colors.black : Colors.grey[300],
                  ),
                  child: Text(
                    'Latest',
                    style: TextStyle(
                      color: selectedIndex == 2 ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: ToggleButtonsDemo()));
}