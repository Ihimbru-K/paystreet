import 'package:flutter/material.dart';

class ServiceButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight * 0.25,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildServiceButton(context, 'assets/airtime.png', 'Buy Airtime', Color(0xFFCFEDFA)),
                _buildServiceButton(context, 'assets/data.png', 'Buy Data', Color(0xFFDDFACF)),
                _buildServiceButton(context, 'assets/cable_tv.png', 'Cable TV', Color(0xFFD4FBEC)),
                _buildServiceButton(context, 'assets/electricity.png', 'Electricity', Color(0xFFFACFF3)),
              ],
            ),
          ),
         // const SizedBox(height: 9),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildServiceButton(context, 'assets/agent.png', 'Become an Agent', Color(0xFFFAF5CF)),
                _buildServiceButton(context, 'assets/education.png', 'EducationPaymen', Color(0xFFFACFF3)),
                _buildServiceButton(context, 'assets/withdraw.png', 'Withdraw Funds', Color(0xFFDDCFFA)),
                _buildServiceButton(context, 'assets/ask4pay.png', 'Ask4 Pay', Color(0xFFF1FACF)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildServiceButton(BuildContext context, String assetPath, String text, Color color) {
    return Expanded(
      child: Container(
        width: 75,
        height: 70,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 43.51,
              height: 43.51,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(assetPath, height: 15, width: 15),
            ),
            SizedBox(height: 5),
            Text(text, style: TextStyle(fontSize: 10)),
          ],
        ),
      ),
    );
  }
}




// import 'package:flutter/material.dart';
//
// class ServiceButtons extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final double screenHeight = MediaQuery.of(context).size.height;
//     return Container(
//       height: screenHeight*0.25,
//       decoration: BoxDecoration(
//
//         color: Color(0xffFFFFFF),
//         borderRadius: BorderRadius.circular(10)
//       ),
//
//
//       child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               _buildServiceButton(context, 'assets/airtime.png', 'Buy Airtime', Color(0xFFCFEDFA)),
//               _buildServiceButton(context, 'assets/data.png', 'Buy Data', Color(0xFFDDFACF)),
//               _buildServiceButton(context, 'assets/cable_tv.png', 'Cable TV', Color(0xFFD4FBEC)),
//               _buildServiceButton(context, 'assets/electricity.png', 'Electricity', Color(0xFFFACFF3)),
//             ],
//           ),
//           const SizedBox(height: 13),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               _buildServiceButton(context, 'assets/agent.png', 'Become an Agent', Color(0xFFFAF5CF)),
//               _buildServiceButton(context, 'assets/education.png', 'Education Payment', Color(0xFFFACFF3)),
//               _buildServiceButton(context, 'assets/withdraw.png', 'Withdraw Funds', Color(0xFFDDCFFA)),
//               _buildServiceButton(context, 'assets/ask4pay.png', 'Ask4 Pay', Color(0xFFF1FACF)),
//             ],
//           ),
//         ],
//       )
//     );
//   }
//
//   Widget _buildServiceButton(BuildContext context, String assetPath, String text, Color color) {
//     return Container(
//       width: 75,
//       height: 70,
//       color: Colors.white,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             width: 43.51,
//             height: 43.51,
//             decoration: BoxDecoration(
//
//               color: color,
//               borderRadius: BorderRadius.circular(10),
//               // boxShadow: [
//               //   BoxShadow(
//               //     color: Colors.grey.withOpacity(0.15),
//               //     spreadRadius: 6,
//               //     blurRadius: 5,
//               //     offset: Offset(0, 3), // adjust the offset as needed for the desired elevation
//               //   ),
//               // ],
//             ),
//             child: Image.asset(assetPath, height: 15, width: 15,),
//           ),
//           //SizedBox(height: 5),
//           Text(text, style: TextStyle(fontSize: 9)),
//         ],
//       ),
//     );
//   }
// }
