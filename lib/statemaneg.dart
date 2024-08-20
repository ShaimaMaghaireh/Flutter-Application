// import 'dart:nativewrappers/_internal/vm/lib/ffi_native_finalizer_patch.dart';

import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/widgets.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ColorChangePage(),
    );
  }
}

class ColorChangePage extends StatefulWidget {

//  final String properity;
//  final int value;
//   final Function(String,int) onChanged;
//   ColorChangePage
//   ({
//     required this.properity,
//     required this.value,
//     required this.onChanged,
//   });
  @override
  _ColorChangePageState createState() => _ColorChangePageState();
}

// class _ColorChangePageState extends State<ColorChangePage> {
//   // double _sliderValue = 0.0;  // Initial value of the slider
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text(widget.properity),
//         Slider(
//           min:0,
//           max: 255,
//         value: widget.value.toDouble(),
//          onChanged: (value) =>
//          {
//           widget.onChanged(widget.properity,value.round()),
//          },
//          label:widget.properity,
//          ),
//       ],
//     );
//   }
// }

class _ColorChangePageState extends State<ColorChangePage> {
  double _sliderValue = 0.0; 
  double _sliderValue1 = 0.0;
  double _sliderValue2 = 0.0; // Initial value of the slider

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Change Circle Color')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Circle that changes color
          Container(
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color.lerp(Colors.red, Colors.blue, _sliderValue),
              
            ),
          ),
          SizedBox(height: 20.0),
          // Slider to control the color
          Slider(
            value: _sliderValue,
            min: 0.0,
            max: 1.0,
            onChanged: (value) {
              setState(() {
                _sliderValue = value;
              });
            },
          ),
          Slider(
            value: _sliderValue1,
            min: 0.0,
            max: 1.0,
            onChanged: (value) {
              setState(() {
                _sliderValue1 = value;
              });
            },
          ),
          Slider(
            value: _sliderValue2,
            min: 0.0,
            max: 1.0,
            onChanged: (value) {
              setState(() {
                _sliderValue2 = value;
              });
            },
          ),
        ],
      ),
    );
  }
}