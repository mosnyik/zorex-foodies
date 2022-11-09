import 'package:flutter/material.dart';
import 'package:foodapp/constants/constants.dart';
import 'package:foodapp/constants/text_style.dart';

class DeliveryFeild extends StatelessWidget {
  const DeliveryFeild({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: kBodyTextStyle.copyWith(
            color: kTextBlack,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          width: 300,
          decoration: BoxDecoration(
              color: kWhite,
              borderRadius: BorderRadius.circular(16),
              boxShadow: const [
                BoxShadow(
                  color: kGrey,
                  offset: Offset(4, 4),
                  blurRadius: 6,
                )
              ]),
          child: TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
