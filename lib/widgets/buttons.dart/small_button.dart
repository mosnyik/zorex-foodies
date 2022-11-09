import 'package:flutter/material.dart';
import 'package:foodapp/constants/constants.dart';

class SmallMenuCardAddButton extends StatefulWidget {
  const SmallMenuCardAddButton({
    Key? key,
  }) : super(key: key);

  @override
  State<SmallMenuCardAddButton> createState() => _SmallMenuCardAddButtonState();
}

class _SmallMenuCardAddButtonState extends State<SmallMenuCardAddButton> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isClicked = !isClicked;
        });
      },
      child: isClicked
          ? const Icon(
              Icons.add_circle,
              color: kMainColor,
            )
          : const Icon(
              Icons.add,
              color: kMainColor,
            ),
    );
  }
}
