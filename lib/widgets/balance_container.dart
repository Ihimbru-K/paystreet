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
    final double screenWidth = MediaQuery.of(context).size.width;
    final double containerHeight = screenHeight * 0.3;
    final double buttonWidth = screenWidth*0.4;
    final double buttonHeight = screenHeight * 0.1;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
      decoration: BoxDecoration(
        color: balanceContainerColor,
        borderRadius: BorderRadius.circular(13),
      ),
      height: containerHeight,
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
          ),
          Text(
            obscureBalance ? '******' : currentBalance,
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          SizedBox(height: screenHeight * 0.02),
          Padding(padding: EdgeInsets.all(0.45), child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TappableContainer(
                text: 'Fund Account',
                assetPath: 'assets/download.png',
                buttonColor: buttonColor,
                width: buttonWidth,
                height: buttonHeight,
                onTap: () {
                  // Handle Fund Account tap
                },
              ),
              TappableContainer(
                text: 'Transfer',
                assetPath: 'assets/send.png',
                buttonColor: buttonColor,
                width: buttonWidth,
                height: buttonHeight,
                onTap: () {
                  // Handle Transfer tap
                },
              ),

            ],
          ),),

        ],
      ),
    );
  }
}

class TappableContainer extends StatelessWidget {
  final String text;
  final String assetPath;
  final Color buttonColor;
  final double width;
  final double height;
  final VoidCallback onTap;

  const TappableContainer({
    Key? key,
    required this.text,
    required this.assetPath,
    required this.buttonColor,
    required this.width,
    required this.height,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text, style: TextStyle(color: Colors.white, fontSize: 18)),
            SizedBox(height: 5),
            Image.asset(assetPath, height: 24),
          ],
        ),
      ),
    );
  }
}









// import 'package:flutter/material.dart';
// import '../utils/colors.dart';
//
// class BalanceContainer extends StatelessWidget {
//   final String currentBalance;
//   final bool obscureBalance;
//   final VoidCallback toggleVisibility;
//
//   BalanceContainer({
//     required this.currentBalance,
//     required this.obscureBalance,
//     required this.toggleVisibility,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     final double screenHeight = MediaQuery.of(context).size.height;
//     return Container(
//       padding: EdgeInsets.only(left: screenHeight * 0.03, right: screenHeight * 0.03),
//       decoration: BoxDecoration(
//         color: balanceContainerColor,
//         borderRadius: BorderRadius.circular(13),
//       ),
//       height: screenHeight * 0.3,
//       width: double.infinity,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Text('Current Balance', style: TextStyle(color: Colors.white, fontSize: 12)),
//               IconButton(
//                 icon: Icon(
//                   obscureBalance ? Icons.visibility_off : Icons.visibility,
//                   color: Colors.white,
//                 ),
//                 onPressed: toggleVisibility,
//               ),
//             ],
//           ),
//           Text(
//             obscureBalance ? '******' : currentBalance,
//             style: TextStyle(color: Colors.white, fontSize: 30),
//           ),
//           SizedBox(height: 20),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               TappableContainer(
//                 text: 'Fund Account',
//                 assetPath: 'assets/download.png',
//                 buttonColor: buttonColor,
//                 onTap: () {
//                   // Handle Fund Account tap
//                 },
//               ),
//               TappableContainer(
//                 text: 'Transfer',
//                 assetPath: 'assets/send.png',
//                 buttonColor: buttonColor,
//                 onTap: () {
//                   // Handle Transfer tap
//                 },
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class TappableContainer extends StatelessWidget {
//   final String text;
//   final String assetPath;
//   final Color buttonColor;
//   final VoidCallback onTap;
//
//   const TappableContainer({
//     Key? key,
//     required this.text,
//     required this.assetPath,
//     required this.buttonColor,
//     required this.onTap,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap,
//       borderRadius: BorderRadius.circular(10),
//       child: Container(
//         width: 172,
//         height: 76,
//         decoration: BoxDecoration(
//           color: buttonColor,
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(text, style: TextStyle(color: Colors.white, fontSize: 18)),
//             SizedBox(height: 5),
//             Image.asset(assetPath, height: 24),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//
//
//







// import 'package:flutter/material.dart';
// import '../utils/colors.dart';
//
// class BalanceContainer extends StatelessWidget {
//   final String currentBalance;
//   final bool obscureBalance;
//   final VoidCallback toggleVisibility;
//
//   BalanceContainer({
//     required this.currentBalance,
//     required this.obscureBalance,
//     required this.toggleVisibility,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     final double screenHeight = MediaQuery.of(context).size.height;
//     return Container(
//       padding: EdgeInsets.only(left: screenHeight*0.03, right: screenHeight*0.03),
//
//       decoration: BoxDecoration(
//
//         color: balanceContainerColor,
//         borderRadius: BorderRadius.circular(13),
//       ),
//       //height: 182,
//       height: screenHeight*0.3,
//       width: double.infinity,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Text('Current Balance', style: TextStyle(color: Colors.white, fontSize: 12)),
//               IconButton(
//                 icon: Icon(
//                   obscureBalance ? Icons.visibility_off : Icons.visibility,
//                   color: Colors.white,
//                 ),
//                 onPressed: toggleVisibility,
//               ),
//             ],
//           ),//
//           Text(
//             obscureBalance ? '******' : currentBalance,
//             style: TextStyle(color: Colors.white, fontSize: 30),
//           ),
//           SizedBox(height: 20),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               ElevatedButton(
//                 onPressed: () {
//                   // Button pressed callback
//                 },
//                 style: ButtonStyle(
//                   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                     RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10), // adjust the radius as needed
//                     ),
//                   ),
//                   fixedSize: MaterialStateProperty.all<Size>(
//                     Size(172, 76), // adjust the width and height as needed
//                   ),
//                   backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text('Fund Account', style: TextStyle(color: Colors.white, fontSize: 18)),
//                     SizedBox(height: 5),
//                     Image.asset("assets/download.png", height: 24),
//                   ],
//                 ),
//               ),
//               ElevatedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: buttonColor,
//                   fixedSize: Size(172, 76),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text('Transfer', style: TextStyle(color: Colors.white, fontSize: 18)),
//                     SizedBox(height: 5),
//                     Image.asset("assets/send.png", height: 24),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
