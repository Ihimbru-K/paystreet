import 'package:flutter/material.dart';
import '../utils/colors.dart';

class BalanceContainer extends StatelessWidget {
  final String currentBalance;
  final bool obscureBalance;
  final VoidCallback toggleVisibility;

  BalanceContainer({
    required this.currentBalance,
    required this.obscureBalance,
    required this.toggleVisibility,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: balanceContainerColor,
        borderRadius: BorderRadius.circular(13),
      ),
      height: 182,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Current Balance', style: TextStyle(color: Colors.white)),
              IconButton(
                icon: Icon(
                  obscureBalance ? Icons.visibility_off : Icons.visibility,
                  color: Colors.white,
                ),
                onPressed: toggleVisibility,
              ),
            ],
          ),
          Text(
            obscureBalance ? '******' : currentBalance,
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: buttonColor,
                  fixedSize: Size(172, 76),
                ),
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Fund Account', style: TextStyle(color: Colors.white, fontSize: 18)),
                    SizedBox(height: 5),
                    Image.asset("assets/download.png", height: 24),
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: buttonColor,
                  fixedSize: Size(172, 76),
                ),
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Transfer', style: TextStyle(color: Colors.white, fontSize: 18)),
                    SizedBox(height: 5),
                    Image.asset("assets/send.png", height: 24),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
