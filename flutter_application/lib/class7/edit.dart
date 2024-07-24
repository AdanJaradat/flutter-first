// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:flutter/material.dart';

// class EditProduct extends StatelessWidget {
//   List productsList;
//   EditProduct({
//     Key? key,
//     required this.productsList,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Future<void> _showMyDialog(int index) async {
//       showDialog<void>(
//         context: context,
//         // barrierDismissible: false,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             title: const Text('Edit product :'),
//             content: Form(
//               child: SingleChildScrollView(
//                   physics: ScrollPhysics(),
//                   child: Column(
//                     children: [
//                       TextFormField(
//                         decoration: InputDecoration(
//                             hintText: productsList[index]['title'],
//                             border: OutlineInputBorder()),
//                       )
//                     ],
//                   )),
//             ),
//           );
//         },
//       );
//     }

//     return ListView.builder(
//       itemCount: productsList.length,
//       itemBuilder: (context, index) {
//         return;
//       },
//     );
//   }
// }
