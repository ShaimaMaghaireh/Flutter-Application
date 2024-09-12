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

import 'package:flutter/material.dart';

void main() => runApp(CardApp());

class CardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CardListScreen(),
    );
  }
}

class CardListScreen extends StatelessWidget {
  final List<Map<String, String>> _cards = [
    {
      'title': 'Apple',
      'description': 'Apple is a nutritious fruit.',
      'additionalInfo': 'Apples are high in fiber and vitamin C.'
    },
    {
      'title': 'Banana',
      'description': 'Banana is a good source of potassium.',
      'additionalInfo': 'Bananas can help improve digestion.'
    },
    {
      'title': 'Carrot',
      'description': 'Carrots are good for your eyes.',
      'additionalInfo': 'Carrots contain beta carotene and vitamin A.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards List'),
      ),
      body: Container(
        width: 500,height: 300,color:Colors.amber,
        child: ListView.builder(
        
          itemCount: _cards.length,
          itemBuilder: (context, index) {
            var cardItem = _cards[index];
            return Card(
              elevation: 4,
              // margin: EdgeInsets.all(10),
              child: ListTile(
                title: Text(cardItem['title']!),
                subtitle: Text(cardItem['description']!),
                onTap: () {
                  // Navigate to the details page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsPage(
                        title: cardItem['title']!,
                        description: cardItem['description']!,
                        additionalInfo: cardItem['additionalInfo']!,
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

class DetailsPage extends StatelessWidget {
  final String title;
  final String description;
  final String additionalInfo;

  DetailsPage({
    required this.title,
    required this.description,
    required this.additionalInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              description,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Additional Information:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              additionalInfo,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

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