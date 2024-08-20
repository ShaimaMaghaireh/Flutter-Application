import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'project1.dart';
class DetailPage extends StatelessWidget
{
  final String name;
  final String describtion;
  DetailPage({required this.name,required this.describtion});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text('name'),),
      body: Padding(padding: const EdgeInsets.all(16.0),
      child: Text('describtion'),),
    );
  }
}