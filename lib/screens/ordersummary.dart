import 'package:flutter/material.dart';
import 'package:foodapp/constants/constants.dart';
import 'package:foodapp/constants/text_style.dart';
import 'package:foodapp/screens/orderspage.dart';
import 'package:foodapp/screens/payment.dart';
import 'package:foodapp/widgets/buttons.dart/large_button.dart';

class OrderSummary extends StatefulWidget {
  const OrderSummary({Key? key}) : super(key: key);
  static String id = 'order_summary_page';

  @override
  State<OrderSummary> createState() => _OrderSummaryState();
}

class _OrderSummaryState extends State<OrderSummary> {
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
        child: ListView(
          children: [
            Container(
              height: 600,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Card(
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Text(
                                'Order Details',
                                style:
                                    kHeader3TextStyle.copyWith(color: kBlack),
                              ),
                            ),
                            Container(
                              height: 300,
                              child: ListView.builder(
                                  itemCount: 10,
                                  scrollDirection: Axis.vertical,
                                  itemBuilder: (_, index) {
                                    return Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          child: GestureDetector(
                                            onTap: () {
                                              print('Tapped');
                                            },
                                            onDoubleTap: () {
                                              print('Doule tapped');
                                            },
                                            child: Card(
                                              child: ListTile(
                                                leading: Image.asset(
                                                    'images/coleslaw.jpeg'),
                                                title: Text('Jellof Rice',
                                                    style: kHeader5TextStyle
                                                        .copyWith(
                                                            color: kBlack)),
                                                subtitle: Text(
                                                  '1,200 x 2',
                                                  style:
                                                      kBodyTextStyle.copyWith(
                                                          color: kTextBlack),
                                                ),
                                                trailing: Text(
                                                  'N 2,400',
                                                  style: kHeader4TextStyle
                                                      .copyWith(color: kBlack),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  }),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 23.0, top: 8, left: 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Subtotal: ',
                                      style: kHeader4TextStyle.copyWith(
                                          color: kBlack)),
                                  Text(
                                    'N 7,000',
                                    style: kHeader4TextStyle.copyWith(
                                        color: kBlack),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 23.0, top: 8, left: 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Delivery fee: ',
                                      style: kHeader4TextStyle.copyWith(
                                          color: kBlack)),
                                  Text(
                                    'N 1,500',
                                    style: kHeader4TextStyle.copyWith(
                                        color: kBlack),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 23.0, top: 8, left: 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Amount payable: ',
                                      style: kHeader4TextStyle.copyWith(
                                          color: kBlack)),
                                  Text(
                                    'N 8,500',
                                    style: kHeader4TextStyle.copyWith(
                                        color: kBlack),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 1, left: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Delivery Address',
                                style:
                                    kHeader4TextStyle.copyWith(color: kBlack),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Name: ',
                                    style: kSubBodyTextStyle.copyWith(
                                        color: kBlack),
                                  ),
                                  Text(
                                    'Nyikwagh Moses ',
                                    style: kSubBodyTextStyle.copyWith(
                                        color: kBlack),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Address: ',
                                    style: kSubBodyTextStyle.copyWith(
                                        color: kBlack),
                                  ),
                                  Text(
                                    'Flat 27, Dantata Estate, Kubwa - Arab Road',
                                    style: kSubBodyTextStyle.copyWith(
                                        color: kBlack),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'City: ',
                                    style: kSubBodyTextStyle.copyWith(
                                        color: kBlack),
                                  ),
                                  Text(
                                    'FCT, Abuja',
                                    style: kSubBodyTextStyle.copyWith(
                                        color: kBlack),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Phone: ',
                                    style: kSubBodyTextStyle.copyWith(
                                        color: kBlack),
                                  ),
                                  Text(
                                    '08012345678',
                                    style: kSubBodyTextStyle.copyWith(
                                        color: kBlack),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
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
                padding: kMenuDetailsBodyPadding.copyWith(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Column(
                  children: [
                    MediumButtonClear(
                      title: 'Edit Order',
                      action: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const OrderPage()));
                      },
                    ),
                    MediumButton(
                      title: 'Proceed to payment',
                      action: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Payment()));
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
