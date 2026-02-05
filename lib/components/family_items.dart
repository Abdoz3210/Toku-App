// import 'package:flutter/material.dart';
// import 'package:toku_app/models/family.dart';

// class FamilyCategory extends StatelessWidget {
//   const FamilyCategory({super.key, required this.member});
//   final FamilyMember? member;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 100,
//       color: Color(0xff416c20),
//       child: Row(
//         children: [
//           Container(
//             height: 100,
//             width: 100,
//             color: Color(0xfffdf0d8),
//             child: Image.asset(member!.image!),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 13),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   member!.jpText!,
//                   style: TextStyle(color: Colors.white, fontSize: 17),
//                 ),
//                 Text(
//                   member!.enText!,
//                   style: TextStyle(color: Colors.white, fontSize: 15),
//                 ),
//               ],
//             ),
//           ),
//           Spacer(flex: 10),
//           IconButton(
//             onPressed: () {},
//             icon: Icon(Icons.play_arrow_rounded, color: Colors.white),
//           ),
//           Spacer(flex: 1),
//         ],
//       ),
//     );
//   }
// }
