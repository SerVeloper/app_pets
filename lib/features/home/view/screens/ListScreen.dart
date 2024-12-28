import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List')),
      body: Center(
        child: Text(
          'This is the List Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
