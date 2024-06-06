import 'package:flutter/material.dart';
import '../utils/colors.dart';

class TransactionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTransactionItem(
          context,
          'assets/shopping.png', // Placeholder image
          'Shopping',
          '12 May 2023, 09:00',
          '-\$500.00',
        ),
        const SizedBox(height: 10),
        _buildTransactionItem(
          context,
          'assets/transfer.png', // Placeholder image
          'Transfer',
          '10 May 2023, 10:45',
          '+\$2,800.00',
        ),
        SizedBox(height: 1),
        _buildTransactionItem(
          context,
          'assets/concert.png', // Placeholder image
          'Concert Ticket',
          '9 May 2023, 19:30',
          '-\$170.00',
        ),
      ],
    );
  }

  Widget _buildTransactionItem(BuildContext context, String assetPath, String title, String subtitle, String trailing) {
    return Container(
      color: whiteColor,
      child: ListTile(
        leading: Container(
          width: 52,
          height: 52,
          decoration: BoxDecoration(
            color: transactionBackgroundColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Image.asset(assetPath, width: 20, height: 20,),
        ),
        title: Text(title, style: const TextStyle(fontSize: 14, color: Color(0xff48484E)),),
        subtitle: Text(subtitle, style: const TextStyle(fontSize: 12, color: Color(0xff8D8D94)),),
        trailing: Text(trailing, style: const TextStyle(fontSize: 20)),
      ),
    );
  }
}
