import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodapp/constants/constants.dart';
import 'package:foodapp/constants/text_style.dart';
import 'package:foodapp/widgets/buttons.dart/small_button.dart';
import 'package:foodapp/widgets/elements/add_or_remove.dart';
import 'package:foodapp/widgets/elements/divider.dart';
import 'package:foodapp/widgets/elements/icons.dart';

import '../widgets/elements/check_out_button.dart';

class MenuDetails extends StatefulWidget {
  const MenuDetails({Key? key}) : super(key: key);
  static String id = 'menu_detail_page';

  @override
  State<MenuDetails> createState() => _MenuDetailsState();
}

class _MenuDetailsState extends State<MenuDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        backgroundColor: kWhite,
        elevation: 0,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: kBlack,
          ),
        ),
        title: Text('Menu Details',
            style: kHeader3TextStyle.copyWith(color: kBlack)),
        actions: const [
          CartIcon(),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                child: Image.asset('images/coleslaw.jpeg'),
              ),
              Positioned(
                left: 370,
                top: 220,
                child: Container(
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
                    child: const FavoriteIcon(
                      iconSize: 40,
                    )),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Coleslaw',
                  style: kHeader3TextStyle.copyWith(color: kBlack),
                ),
                const Icon(
                  Icons.star,
                  color: kMainColor,
                ),
                const Icon(
                  Icons.star_border,
                  color: kMainColor,
                ),
                Text('4 start rating',
                    style: kBodyTextStyle.copyWith(fontSize: 18)),
              ],
            ),
          ),
          Padding(
            padding: kMenuDetailsBodyPadding,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'N 1,200',
                  style: kHeader3TextStyle.copyWith(color: kBlack),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  child: QtyAdjust(),
                ),
              ],
            ),
          ),
          Padding(
            padding: kMenuDetailsBodyPadding,
            child: Text(
              'Description',
              style: kHeader3TextStyle.copyWith(color: kBlack),
            ),
          ),
          const Padding(
            padding: kMenuDetailsBodyPadding,
            child: Text(
              'Research have shown that having nuts with your meal is very healthy, so get some awesome sides for your dish',
              style: kBodyTextStyle,
            ),
          ),
          const MyDivider(),
          Padding(
            padding: kMenuDetailsBodyPadding,
            child: Text('Recommended sides',
                style: kHeader3TextStyle.copyWith(color: kBlack)),
          ),
          Container(
            height: 110,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return SmallMenuCard();
                }),
          ),
          const MyDivider(),
          Padding(
            padding: kMenuDetailsBodyPadding,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Ratings & Reviews',
                    style: kHeader3TextStyle.copyWith(color: kBlack)),
                Text(
                  'See all',
                  style: kBodyTextStyle.copyWith(color: kMainColor),
                ),
              ],
            ),
          ),
          Padding(
            padding: kMenuDetailsBodyPadding,
            child: Text(
              'This is the meal review and can also do well to leave ua a review,I just want this to be very long',
              style: kBodyTextStyle.copyWith(color: kBlack),
            ),
          ),
          const CheckOutButton(),
        ],
      ),
    );
  }
}

class SmallMenuCard extends StatelessWidget {
  const SmallMenuCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: 120,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('images/coleslaw.jpeg'),
            fit: BoxFit.fill,
          ),
          color: kWhite,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: kGrey,
              blurRadius: 2.0,
              offset: Offset(2.0, 2.0),
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              color: kWhite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: kRecommendedSidePadding,
                    child: Text(
                      'Fried Plantain',
                      style: kBodyTextStyle.copyWith(color: kBlack),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'N 300',
                          style: kHeader4TextStyle,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              // color: kMainColor,
                              border:
                                  Border.all(color: kMainColor, width: 2.0)),
                          child: const SmallMenuCardAddButton(),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
