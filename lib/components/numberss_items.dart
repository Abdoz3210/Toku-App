// Last Version
//
//
//
// import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter/material.dart';
// import 'package:toku_app/models/numbers.dart';

// class NumberCategory extends StatelessWidget {
//   const NumberCategory({super.key, this.number});
//   final Number? number;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           height: 100,
//           color: Color(0xffEC8724),
//           child: Row(
//             children: [
//               Container(
//                 color: Color(0xffF2E4D1),
//                 child: Image.asset(number!.image),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 8.0),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       number!.jpText,
//                       style: TextStyle(color: Colors.white, fontSize: 15),
//                     ),
//                     Text(
//                       number!.enText,
//                       style: TextStyle(color: Colors.white, fontSize: 15),
//                     ),
//                   ],
//                 ),
//               ),
//               Spacer(flex: 10),
//               IconButton(
//                 onPressed: () {
//                   final player = AudioPlayer();
//                   player.setSourceAsset(number!.sound);
//                 },
//                 icon: Icon(Icons.play_arrow, color: Colors.white, size: 25),
//               ),

//               Spacer(flex: 1),
//             ],
//           ),
//         ),
//         Divider(height: 0),
//       ],
//     );
//   }
// }
