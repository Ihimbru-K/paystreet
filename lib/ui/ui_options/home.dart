import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final String currentBalance;

  HomeScreen({required this.currentBalance});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _obscureBalance = false;

  void _toggleBalanceVisibility() {
    setState(() {
      _obscureBalance = !_obscureBalance;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BalanceContainer(
              currentBalance: widget.currentBalance,
              obscureBalance: _obscureBalance,
              toggleVisibility: _toggleBalanceVisibility,
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Services', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Icon(Icons.arrow_forward),
              ],
            ),
            SizedBox(height: 20),
            ServiceButtons(),
            SizedBox(height: 7),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Transactions', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text('See all', style: TextStyle(color: Colors.blue)),
              ],
            ), //
            SizedBox(height: 20),
            TransactionList(),
          ],
        ),
      ),
    );
  }
}
