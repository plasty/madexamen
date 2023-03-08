import 'package:app_examen/pages/ShoppingCartPage.dart';
import 'package:app_examen/pages/profile.dart';
import 'package:flutter/material.dart';

import 'SellFoodPage.dart';
import 'afhalen.dart';
import 'bezorgen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    BezorgenPage(),
    AfhalenPage(),
    ProfilePage(),
    SellFoodPage(),
    ShoppingCartPage(
      item: '',
    ),
  ];

  @override
  void initState() {
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.delivery_dining),
            label: 'Bezorgen',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Afhalen',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profiel',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank_outlined),
            label: 'Verkopen',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Verkopen',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Color.fromRGBO(0, 0, 0, 0.871),
        selectedItemColor: Color.fromRGBO(217, 132, 67, 1),
        onTap: _onItemTapped,
      ),
    );
  }
}
