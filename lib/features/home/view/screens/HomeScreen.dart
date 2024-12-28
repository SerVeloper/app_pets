import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import '../../../../core/utils/constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    Center(child: Text('Home')),
    Center(child: Text('List')),
    Center(child: Text('Favorites')),
    Center(child: Text('Profile')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: backgroundColor, // Fondo detrás de la barra
        color: secondaryColor, // Color de la barra
        buttonBackgroundColor: primaryColor, // Color del botón activo
        height: 50, // Altura de la barra
        items: const <Widget>[
          Icon(Icons.home, size: 30, color: backgroundColor, semanticLabel: "Home",),
          Icon(Icons.list, size: 30, color: backgroundColor),
          Icon(Icons.favorite, size: 30, color: backgroundColor),
          Icon(Icons.person, size: 30, color: backgroundColor),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
