import 'package:flutter/material.dart';
import 'package:foodapp/components/models/menu.dart';
import 'package:foodapp/constants/text_style.dart';
import 'package:foodapp/widgets/elements/icons.dart';

import '../../constants/constants.dart';

List<Meal> mealList = [
  Meal(
      name: 'Jellof Rice',
      price: 1200,
      image: 'logo_rice1.png',
      wishList: true,
      description:
          'Full nutritious meal of nigerian jellof rice made for your enjoyment',
      rating: 4.5),
  Meal(
      name: 'chicken Pasta Salad',
      price: 1400,
      image: 'chicken_pasta_salad.jpeg',
      wishList: false,
      description:
          'Full nutritious meal of nigerian jellof rice made for your enjoyment',
      rating: 4.5),
  Meal(
      name: 'Spicy Noodles',
      price: 1400,
      image: 'spicy_noodles.jpeg',
      wishList: false,
      description:
          'Full nutritious meal of nigerian jellof rice made for your enjoyment',
      rating: 4.5),
];

class BigMenuCard extends StatefulWidget {
  const BigMenuCard({Key? key, required this.pic, required this.onPress})
      : super(key: key);
  final String pic;
  final VoidCallback onPress;

  @override
  State<BigMenuCard> createState() => _BigMenuCardState();
}

class _BigMenuCardState extends State<BigMenuCard> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: widget.onPress,
        child: Container(
          height: 200,
          width: 170,
          decoration: BoxDecoration(
              color: kWhite,
              // image: DecorationImage(image: AssetImage(pic), fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                  color: kGrey,
                  offset: Offset(2, 2),
                  blurRadius: 6,
                )
              ]),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Stack(
                  children: [
                    Image.asset(
                      widget.pic,
                      height: 100,
                      width: 150,
                    ),
                    const Positioned(
                      top: 8,
                      right: -8,
                      child: FavoriteIcon(iconSize: 25),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  'Vegetable Curry',
                  style: kHeader3TextStyle.copyWith(color: kTextBlack),
                ),
              ),
              Text(
                'N1,200',
                style: kHeader3TextStyle.copyWith(color: kBlack),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
