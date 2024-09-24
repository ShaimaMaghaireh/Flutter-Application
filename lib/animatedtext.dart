// import 'package:flutter/material.dart';
// import 'package:animated_text_kit/animated_text_kit.dart';
// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   bool _isBig = false;
// bool _isExpanded = false;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Animated Text Example")),
//         body: Center(
//           child: 
          // GestureDetector(
          //   onTap: () {
          //     setState(() {
          //       _isBig = !_isBig;
          //     });
          //   },
          //   child: AnimatedDefaultTextStyle(
          //     duration: Duration(seconds: 1),
          //     style: _isBig
          //         ? TextStyle(fontSize: 50, color: Colors.blue, fontWeight: FontWeight.bold)
          //         : TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.normal),
          //     child: Text("Tap to Animate"),
          //   ),
          // ),
//           AnimatedTextKit(
//   animatedTexts: [
//     TypewriterAnimatedText(
//       'Hello world!',
//       textStyle: const TextStyle(
//         fontSize: 32.0,
//         fontWeight: FontWeight.bold,
//       ),
//       speed: const Duration(seconds: 2),
//     ),
//   ],
  
//   totalRepeatCount: 4,
//   pause: const Duration(seconds: 4),
//   displayFullTextOnTap: true,
//   stopPauseOnTap: true,
// )
// Row(
//   mainAxisSize: MainAxisSize.min,
//   children: <Widget>[
//     const SizedBox(width: 20.0, height: 100.0),
//     const Text(
//       'Be',
//       style: TextStyle(fontSize: 43.0,color:Color.fromARGB(255, 191, 215, 234)),
//     ),
//     const SizedBox(width: 20.0, height: 100.0),
//     DefaultTextStyle(
//       style: const TextStyle(
//         fontSize: 40.0,
//         fontFamily: 'Horizon',
//       ),
//       child: AnimatedTextKit(
//         animatedTexts: [
//           RotateAnimatedText('AWESOME',textStyle:TextStyle(fontSize: 43.0,color:Colors.blue)),
//           RotateAnimatedText('OPTIMISTIC',textStyle:TextStyle(fontSize: 43.0,color:Colors.blue)),
//           RotateAnimatedText('DIFFERENT',textStyle:TextStyle(fontSize: 43.0,color:Colors.blue)),
//         ],
//         onTap: () {
//           print("Tap Event");
//         },
//       ),
//     ),
//   ],
// ),
// SizedBox(
//   width: 400.0,
//   child: TextLiquidFill(
//     text: 'LIQUIDY',
//     waveColor: Colors.blueAccent,
//     boxBackgroundColor: Colors.redAccent,
//     textStyle: TextStyle(
//       fontSize: 80.0,
//       fontWeight: FontWeight.bold,
//     ),
//     boxHeight: 300.0,
//   ),
// ),
// GestureDetector(
//             onTap: () {
//               setState(() {
//                 _isExpanded = !_isExpanded;
//               });
//             },
//             child: AnimatedContainer(
//               duration: Duration(seconds: 1),
//               width: _isExpanded ? 300 : 200,
//               height: _isExpanded ? 200 : 150,
//               curve: Curves.easeInOut,
//               decoration: BoxDecoration(
//                 color: _isExpanded ? Colors.blue : Colors.red,
//                 borderRadius: BorderRadius.circular(_isExpanded ? 30 : 10),
//               ),
//               child: Card(
//                 color: Colors.transparent,
//                 elevation: 5,
//                 child: Center(
//                   child: Text(
//                     'Tap to Animate',
//                     style: TextStyle(color: Colors.white, fontSize: 18),
//                   ),
//                 ),
//               ),
//             ),
//           ),
        
//         ),
//       ),
//     );
//   }
// }

// import 'dart:async';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   double _opacity = 0.0;

//   @override
//   void initState() {
//     super.initState();

//     // Delay the animation for 1 second
//     Timer(Duration(seconds: 1), () {
//       setState(() {
//         _opacity = 1.0;
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('Automatic Animated Card')),
//         body: Center(
//            child:
//           AnimatedOpacity(
//             duration: Duration(seconds: 2),
//             opacity: _opacity,
//             child: Card(
//                 color: Colors.purple.withOpacity(0.5),
//               elevation: 5,
//               child: Container(
//                 color: Colors.purple.withOpacity(0.5),
//                 width: 200,
//                 height: 150,
//                 alignment: Alignment.center,
//                 child: Text(
//                   'Hello, Flutter!',
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:animate_do/animate_do.dart';
// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   double _opacity = 0.0;

//   @override
//   void initState() {
//     super.initState();

//     // Trigger the fade-in after a short delay
//     Timer(Duration(seconds: 1), () {
//       setState(() {
//         _opacity = 1.0;
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp( 
//       home: 
//       Scaffold(
//         appBar: AppBar(title: Text('Fade-In Animation Example')),
//         body: Center(
//           child: AnimatedOpacity(
//             duration: Duration(seconds: 2),
//             opacity: _opacity,
//             child: Container(
//               width: 200,
//               height: 200,
//               color: Colors.blue,
//               child: Center(
//                 child: Text(
//                   'Fade In!',
//                   style: TextStyle(fontSize: 24, color: Colors.white),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData.light(useMaterial3: true),
      home: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              FadeInLeft(child: Container(width: 200,height: 200,color: Colors.amber,)),
              FadeInUp(child: const Square()),
              FadeInDown(child: const Square()),
              FadeInRight(child: const Square()),
            ],
          ),
        ),
      ),
    );
  }
}

class Square extends StatelessWidget {
  const Square({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      color: Colors.blueAccent,
    );
  }
}