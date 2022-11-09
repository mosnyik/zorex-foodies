import 'package:flutter/material.dart';
import 'package:foodapp/constants/constants.dart';
import 'package:foodapp/screens/orderspage.dart';

class CartIcon extends StatelessWidget {
  const CartIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 25.0,
        top: 16,
      ),
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const OrderPage()));
            },
            child: const Icon(
              Icons.shopping_cart_outlined,
              color: kBlack,
              size: 32,
            ),
          ),
          Positioned(
            right: 5,
            top: -.5,
            // left: 5,
            child: Container(
              height: 15,
              width: 14,
              decoration: BoxDecoration(
                  color: kRed, borderRadius: BorderRadius.circular(40)),
              child: const Text(
                '3',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FavoriteIcon extends StatefulWidget {
  const FavoriteIcon({
    Key? key,
    required this.iconSize,
  }) : super(key: key);
  final double iconSize;

  @override
  State<FavoriteIcon> createState() => _FavoriteIconState();
}

class _FavoriteIconState extends State<FavoriteIcon> {
  bool isClicked = false;
  double iconSize = 25;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            isClicked = !isClicked;
          });
        },
        child: isClicked
            ? Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: kWhite,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: kGrey,
                          blurRadius: 2.0,
                          offset: Offset.fromDirection(3),
                          spreadRadius: 1),
                    ]),
                child: Icon(
                  Icons.favorite,
                  color: kMainColor,
                  size: iconSize,
                ),
              )
            : Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: kWhite,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: kGrey,
                          blurRadius: 2.0,
                          offset: Offset.fromDirection(3),
                          spreadRadius: 1),
                    ]),
                child: Icon(
                  Icons.favorite,
                  color: kMainColor,
                  size: iconSize,
                ),
              ));
  }
}
