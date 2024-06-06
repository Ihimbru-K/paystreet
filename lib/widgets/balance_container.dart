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
    final double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        color: balanceContainerColor,
        borderRadius: BorderRadius.circular(13),
      ),
      //height: 182,
      height: screenHeight*0.3,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Current Balance', style: TextStyle(color: Colors.white, fontSize: 12)),
              IconButton(
                icon: Icon(
                  obscureBalance ? Icons.visibility_off : Icons.visibility,
                  color: Colors.white,
                ),
                onPressed: toggleVisibility,
              ),
            ],
          ),//
          Text(
            obscureBalance ? '******' : currentBalance,
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Button pressed callback
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // adjust the radius as needed
                    ),
                  ),
                  fixedSize: MaterialStateProperty.all<Size>(
                    Size(172, 76), // adjust the width and height as needed
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
                ),
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
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: buttonColor,
                  fixedSize: Size(172, 76),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Transfer', style: TextStyle(color: Colors.white, fontSize: 18)),
                    SizedBox(height: 5),
                    Image.asset("assets/send.png", height: 24),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
