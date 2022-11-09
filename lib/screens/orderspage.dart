import 'package:flutter/material.dart';
import 'package:foodapp/constants/constants.dart';
import 'package:foodapp/constants/text_style.dart';
import 'package:foodapp/screens/delivery.dart';
import 'package:foodapp/screens/menu.dart';
import 'package:foodapp/widgets/buttons.dart/large_button.dart';
import 'package:foodapp/widgets/elements/add_or_remove.dart';
import 'package:foodapp/widgets/elements/check_out_button.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);
  static String id = 'orderPage_screen';

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kWhite,
        title: Text(
          'Your Order',
          style: kHeader3TextStyle.copyWith(color: kBlack),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: kBlack,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.help_outline_outlined,
              color: kBlack,
              size: 32,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: kSignUpBodyPadding.copyWith(
          top: 8,
          left: 8,
          right: 8,
        ),
        child: Column(
          children: [
            Container(
              height: 589,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  itemCount: 8,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (_, index) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  color: kGrey,
                                  offset: Offset(1, 1),
                                  blurRadius: 9,
                                  blurStyle: BlurStyle.inner,
                                ),
                              ]),
                          child: Card(
                            child: ListTile(
                              leading: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset('images/coleslaw.jpeg'),
                              ),
                              title: Text(
                                'Jellof Rice',
                                style: kHeader3TextStyle.copyWith(
                                    color: kTextBlack),
                              ),
                              trailing: Container(
                                height: MediaQuery.of(context).size.height,
                                width: 140,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Icon(
                                      Icons.cancel_outlined,
                                      size: 17,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        const QtyAdjust(),
                                        Text(
                                          'N 1,200',
                                          style: kHeader3TextStyle.copyWith(
                                              color: kBlack),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
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
                  // .copyWith(
                  // bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Price',
                            style: kHeader3TextStyle.copyWith(color: kBlack),
                          ),
                          Text('Total: N 2,000',
                              style: kHeader3TextStyle.copyWith(color: kBlack)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '(Delivery fee not included)',
                            style: kSubBodyTextStyle.copyWith(
                              color: kGrey,
                            ),
                          )
                        ],
                      ),
                      MediumButtonClear(
                        title: 'Add items',
                        action: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MenuPage()));
                        },
                      ),
                      MediumButton(
                        title: 'Checkout',
                        action: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Delivery()));
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
