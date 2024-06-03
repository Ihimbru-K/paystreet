import 'package:flutter/material.dart';
import 'ui_options/home.dart';
import 'ui_options/profile.dart';
import 'ui_options/stats.dart';
import 'ui_options/ticket.dart';


class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  static const String nameValue = "John Doe";
  static const String currentBalance = "\$7,860.00";

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(currentBalance: currentBalance),
    TicketScreen(),
    StatsScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/profile_image.png'), // Placeholder image
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hi $nameValue', style: TextStyle(color: Colors.black)),
            Text('Good evening', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
          ],
        ),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/notification_icon.png'), // Placeholder image
          ),
        ],
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_activity),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFF6669E0),
        onTap: _onItemTapped,
      ),
    );
  }
}
//