import 'package:flutter/material.dart';
import 'package:foodapp/constants/constants.dart';
import 'package:foodapp/constants/text_style.dart';
import 'package:foodapp/widgets/elements/check_out_button.dart';

// class AddOrRemove extends StatelessWidget {
//   const AddOrRemove({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//           color: kMainColor,
//           shape: BoxShape.rectangle,
//           borderRadius: BorderRadius.circular(12.0),
//           boxShadow: const [
//             BoxShadow(
//               color: kWhite,
//               blurRadius: 1.0,
//             ),
//           ]),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 4),
//         child: Row(
//           children: [
//             GestureDetector(
//               child: const Icon(
//                 Icons.remove,
//                 color: kWhite,
//                 size: 20,
//               ),
//             ),
//             const Padding(
//               padding: kMenuDetailsBodyPadding,
//               child: Text(
//                 '1',
//                 style: TextStyle(
//                   color: kWhite,
//                   fontSize: 18,
//                 ),
//               ),
//             ),
//             GestureDetector(
//               onTap: () {
//                 showBottomSheet(
//                     context: context,
//                     builder: (context) => const SingleChildScrollView(
//                           child: CheckOutButton(),
//                         ));
//               },
//               child: const Icon(
//                 Icons.add,
//                 color: kWhite,
//                 size: 20,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class QtyAdjust extends StatefulWidget {
  const QtyAdjust({
    Key? key,
  }) : super(key: key);

  @override
  State<QtyAdjust> createState() => _QtyAdjustState();
}

class _QtyAdjustState extends State<QtyAdjust> {
  int qty = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: kMainColor,
          shape: BoxShape.rectangle,
          border: Border.all(width: 2, color: kMainColor),
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: const [
            BoxShadow(
              color: kWhite,
              blurRadius: 1.0,
            ),
          ]),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                qty--;
              });
            },
            child: const Icon(
              Icons.remove,
              color: kWhite,
            ),
          ),
          Text(
            qty.toString(),
            style: kBodyTextStyle.copyWith(color: kWhite),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                qty++;
              });
            },
            child: const Icon(
              Icons.add,
              color: kWhite,
            ),
          ),
        ],
      ),
    );
  }
}
