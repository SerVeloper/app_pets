import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List')),
      body: Center(
        child: Text(
          'This is the Favorites Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
