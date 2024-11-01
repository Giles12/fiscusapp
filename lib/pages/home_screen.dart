// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:fiscusapp/pages/camera_page.dart';
import 'package:flutter/material.dart';
import 'home_page.dart'; // Your Home page
import 'budget_page.dart'; // Your Reports page
import 'stocks_page.dart'; // Your Stocks page
import 'setting_page.dart'; // Your Settings page

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // List of pages to navigate to
  final List<Widget> _pages = [
    HomePage(), // Home page
    BudgetPage(), // Reports page
    CameraPage(), // Camera page
    StocksPage(), // Stocks page
    SettingsPage(), // Settings page
  ];

  // Function to handle navigation item selection
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accounts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Reports',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'Stocks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        selectedItemColor: Colors.blue, // Selected icon color
        unselectedItemColor: Colors.grey, // Unselected icon color
      ),
    );
  }
}
