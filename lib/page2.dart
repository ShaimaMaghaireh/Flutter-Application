// import 'package:flutter/material.dart';
// import 'package:flutter_application_2/page1.dart';

// class PageTwo extends StatefulWidget
// {
//   @override
// _PageTwoState createState() => _PageTwoState();
// }

// class _PageTwoState extends State<PageTwo>
// {
//   final String routename='/page2';
//   @override
//   // TODO: implement widget
//   Widget build(BuildContext context)
//   {
//     final RoutesArguments args =
//    ModalRoute.of(context)!.settings.arguments as RoutesArguments;
//     return Scaffold(
//       appBar:AppBar(title:Text('Page 2'),),
//       body: Center(
//         child: Column(mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Text('Page two'),
//           Text(args.title),
//           ElevatedButton( child:Text('Go to page one',style:TextStyle(fontSize:20,color: Color.fromARGB(255, 113, 228, 232))),
//           onPressed:()
//           {
//           Navigator.pop(context);
//           },
//           ),
//           ],
//           ),
//       ),

//     );
//   }
// }