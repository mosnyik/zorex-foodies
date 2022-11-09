import 'package:flutter/material.dart';
import 'package:foodapp/constants/constants.dart';
import 'package:foodapp/constants/text_style.dart';
import 'package:foodapp/screens/menu_details.dart';
import 'package:foodapp/widgets/elements/divider.dart';
import 'package:foodapp/widgets/elements/menu_cards.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: kSignUpBodyPadding,
        child: ListView(
            //mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Hello Moses',
                style: kBodyTextStyle,
              ),
              RichText(
                text: TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: 'What would you like to \n',
                      style: kHeader1TextStyle.copyWith(color: kBlack)),
                  TextSpan(
                      text: 'eat?',
                      style: kHeader1TextStyle.copyWith(color: kMainColor)),
                ]),
              ),
              Row(
                children: [
                  // food menu search bar
                  Container(
                    width: width * 0.7,
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
                        prefixIcon: const Icon(Icons.search),
                        suffixIcon: const Icon(Icons.keyboard_voice),
                        hintText: 'Enter a dish name eg Egwusi soup',
                        hintStyle: kSubBodyTextStyle.copyWith(color: kGrey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  // search settings by the search bar
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: kMainColor,
                          borderRadius: BorderRadius.circular(5)),
                      child: const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Icon(
                          Icons.tune_rounded,
                          size: 40,
                          color: kWhite,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const MyDivider(),
              // Menu class buttons below the search bar
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Meals',
                      style: kBodyTextStyle.copyWith(color: kWhite),
                    ),
                  ),
                  const SizedBox(
                    width: kSizedBoxWidth,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Meals',
                        style: kBodyTextStyle.copyWith(color: kBlack),
                      ),
                      style: ElevatedButton.styleFrom(primary: kWhite)),
                  const SizedBox(
                    width: kSizedBoxWidth,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Meals',
                      style: kBodyTextStyle.copyWith(color: kBlack),
                    ),
                    style: ElevatedButton.styleFrom(primary: kWhite),
                  ),
                  const SizedBox(
                    width: kSizedBoxWidth,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Meals',
                      style: kBodyTextStyle.copyWith(color: kBlack),
                    ),
                    style: ElevatedButton.styleFrom(primary: kWhite),
                  ),
                  const SizedBox(
                    width: kSizedBoxWidth,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Meals',
                      style: kBodyTextStyle.copyWith(color: kBlack),
                    ),
                    style: ElevatedButton.styleFrom(primary: kWhite),
                  ),
                  const SizedBox(
                    width: kSizedBoxWidth,
                  ),
                ],
              ),
              // Special order banner
              Text(
                'Today\'s Special Order',
                style: kHeader3TextStyle.copyWith(color: kBlack),
              ),
              Container(
                height: 140,
                width: 400,
                decoration: BoxDecoration(
                  color: kWhite,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: kGrey,
                      blurRadius: 12,
                      offset: Offset(6, 4),
                    ),
                  ],
                ),
                child: Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'images/burger.jpg',
                          height: MediaQuery.of(context).size.height,
                          width: 190,
                          fit: BoxFit.fitWidth,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 2.0, left: 8.0, right: 8.0),
                          child: Column(
                            children: [
                              const Text('Yummies Burger Spacial',
                                  style: kBodyTextStyle),
                              const Text('Now', style: kBodyTextStyle),
                              Text(
                                'N 1,800',
                                style: kHeader3TextStyle.copyWith(
                                  color: kBlack,
                                ),
                              ),
                              Text(
                                '(30% off)',
                                style: kBodyTextStyle.copyWith(
                                  color: kRed,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5)),
                                child: TextButton(
                                  onPressed: () {},
                                  child: const Text('Add to Cart'),
                                  style: TextButton.styleFrom(
                                      side: const BorderSide(
                                          color: kMainColorMonochrom),
                                      shape: const BeveledRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5)))),
                                ),
                              )
                            ],
                          ),
                        )
                      ]),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Now',
                    style: kHeader3TextStyle.copyWith(color: kBlack),
                  ),
                  Text('See all',
                      style: kBodyTextStyle.copyWith(color: kMainColor))
                ],
              ),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (_, index) {
                    return BigMenuCard(
                      pic: 'images/logo_rice1.png',
                      onPress: () {
                        Navigator.pushNamed(context, MenuDetails.id);
                      },
                    );
                  },
                ),
              ),
            ]),
      ),
    );
  }
}
