import 'package:flutter/material.dart';

import '../../widgets/balance_container.dart';
import '../../widgets/service_buttons.dart';
import '../../widgets/transactions_list.dart';

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
            const SizedBox(height: 30),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Bill Payments', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color:Color(0xFF48484E))),
                Icon(Icons.arrow_forward_ios, color:Color(0xFF48484E),),
              ],
            ),
            const SizedBox(height: 20),
            ServiceButtons(),
            const SizedBox(height: 7),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Transactions', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold )),
                Text('See all', style: TextStyle( fontSize: 16, color: Color(0xff48484E))),
              ],
            ), //
            const SizedBox(height: 20),
            SingleChildScrollView(child: TransactionList(),)
          ],
        ),
      ),
    );
  }
}
