import 'package:flutter/material.dart';
import 'package:foodapp/constants/constants.dart';
import 'package:foodapp/constants/text_style.dart';
import 'package:foodapp/screens/login.dart';

class LargeButton extends StatelessWidget {
  const LargeButton({Key? key, required this.title, required this.action})
      : super(key: key);
  final String title;
  final VoidCallback action;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Center(
          child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: 300,
          color: kMainColor,
          child: TextButton(
            onPressed: action,
            child: Text(
              title,
              style: kButtonTextStyle,
            ),
          ),
        ),
      )),
    );
  }
}

class MediumButton extends StatelessWidget {
  const MediumButton({
    Key? key,
    required this.title,
    required this.action,
  }) : super(key: key);

  final String title;
  final VoidCallback action;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0, left: 32.0, right: 32.0),
      child: Center(
          child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: 200,
          color: kMainColor,
          child: TextButton(
            onPressed: action,
            child: Text(
              title,
              style: kButtonTextStyle.copyWith(fontSize: 15),
            ),
          ),
        ),
      )),
    );
  }
}

class MediumButtonClear extends StatelessWidget {
  const MediumButtonClear({
    Key? key,
    required this.title,
    required this.action,
  }) : super(key: key);

  final String title;
  final VoidCallback action;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          bottom: 4.0, left: 32.0, right: 32.0, top: 16.0),
      child: Center(
          child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          decoration: BoxDecoration(border: Border.all(color: kMainColor)),
          width: 200,
          child: TextButton(
            onPressed: action,
            child: Text(
              title,
              style: kButtonTextStyle.copyWith(color: kMainColor, fontSize: 15),
            ),
          ),
        ),
      )),
    );
  }
}
