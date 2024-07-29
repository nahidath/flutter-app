// import 'package:flutter/material.dart';
//
// import '../../../models/article.dart';
//
//
// class HeaderSection extends StatelessWidget {
//   final Article article;
//   const HeaderSection(this.article, {super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 25),
//       child: Row(
//         children: [
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 article.name,
//                 style: const TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 20,
//                 ),
//               ),
//               const SizedBox(height: 10),
//               Text(
//                 article.type,
//                 style: TextStyle(
//                   color: Colors.grey.withOpacity(0.5),
//                 ),
//               ),
//               const SizedBox(height: 5),
//               Row(
//                 children: [
//                   Row(
//                     children: [
//                       const Icon(
//                         Icons.star,
//                         color: Colors.amber,
//                         size: 15,
//                       ),
//                       Text(
//                         article.score.toString(),
//                         style: const TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 12,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
