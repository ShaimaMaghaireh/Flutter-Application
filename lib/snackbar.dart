import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Shop Menu',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List person=['Ali','Ahmad'];
  Map deletedperson={};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack bar'),
      ),
      body:Column(
        children: [
          Expanded(child:
          ListView.builder(
            itemCount: person.length,
            itemBuilder: (context, index)
          {
            
          } ,
          ),
          ),
        ],

      ),
    );
  }
}

class ProductDetailsPage extends StatefulWidget {
  final String imagePath;
  final String productName;

  ProductDetailsPage({required this.imagePath, required this.productName});

  @override
  _ProductDetailsPageState createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  double rating = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.productName),
      ),
      body: Column(
        children: [
          Image.network(widget.imagePath, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              widget.productName,
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Description of the product goes here.',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(5, (index) {
              return IconButton(
                icon: Icon(
                  index < rating ? Icons.star : Icons.star_border,
                  color: Colors.amber,
                ),
                onPressed: () {
                  setState(() {
                    rating = index + 1.0;
                  });
                },
              );
            }),
          ),
          Text('Rating: $rating'),
        ],
      ),
    );
  }
}