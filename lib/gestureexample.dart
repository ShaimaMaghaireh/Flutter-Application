import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Swipe Icon Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SwipeIconScreen(),
    );
  }
}

class SwipeIconScreen extends StatefulWidget {
  @override
  _SwipeIconScreenState createState() => _SwipeIconScreenState();
}

class _SwipeIconScreenState extends State<SwipeIconScreen> {
  bool _iconVisible = false;
  IconData _icon = Icons.arrow_forward;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Swipe Icon Example'),
      ),
      body: Center(
        child: GestureDetector(
          onHorizontalDragEnd: (details) {
            setState(() {
              _iconVisible = true;
              _icon = details.primaryVelocity! > 0 ? Icons.arrow_forward : Icons.arrow_back;
            });
          },
          child: Container(
            color: Colors.blueAccent,
            height: 100,
            width: 200,
            child: Center(
              child: Text(
                'Swipe me',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: _iconVisible
          ? FloatingActionButton(
              onPressed: () {
                setState(() {
                  _iconVisible = false;
                });
              },
              child: Icon(_icon),
            )
          : null,
    );
  }
}