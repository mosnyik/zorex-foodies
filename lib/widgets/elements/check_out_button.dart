import 'package:flutter/material.dart';
import 'package:foodapp/constants/constants.dart';
import 'package:foodapp/constants/text_style.dart';
import 'package:foodapp/screens/orderspage.dart';

class CheckOutButton extends StatelessWidget {
  const CheckOutButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: kWhite,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(
                (25),
              ),
              topRight: Radius.circular(
                (25),
              ),
            ),
            boxShadow: [
              BoxShadow(
                color: kGrey,
                offset: Offset.fromDirection(0.3),
                blurRadius: 7,
                spreadRadius: 2,
                blurStyle: BlurStyle.normal,
              ),
            ]),
        child: Padding(
          padding: kMenuDetailsBodyPadding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Total: N 2,000',
                  style: kMenuCardTextStyle.copyWith(color: kBlack)),
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Center(
                    child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    width: 150,
                    color: kMainColor,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const OrderPage()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.shopping_cart_outlined,
                            size: 20,
                            color: kWhite,
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Text(
                            'add to cart',
                            style: kButtonTextStyle.copyWith(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
