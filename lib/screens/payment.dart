import 'package:flutter/material.dart';
import 'package:foodapp/constants/constants.dart';
import 'package:foodapp/constants/text_style.dart';
import 'package:foodapp/widgets/buttons.dart/large_button.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);
  static String id = 'payment_page';

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  // var kDeliveryPadding;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: kBlack,
          ),
        ),
        title: Text(
          'Payment ',
          style: kHeader3TextStyle.copyWith(color: kBlack),
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
        backgroundColor: kWhite,
      ),
      body: Padding(
        padding: kSignUpBodyPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Choose your payment method',
              style: kHeader3TextStyle.copyWith(color: kTextBlack),
            ),
            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Icon(Icons.radio_button_checked_rounded),
                        Image.asset(
                          'images/coleslaw.jpeg',
                          height: 50,
                          width: 50,
                        ),
                        const Icon(Icons.radio_button_checked_rounded),
                        Image.asset(
                          'images/coleslaw.jpeg',
                          height: 50,
                          width: 50,
                        ),
                        const Icon(Icons.radio_button_checked_rounded),
                        Image.asset(
                          'images/coleslaw.jpeg',
                          height: 50,
                          width: 50,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Text(
                        'CARD NUMBER',
                        style: kHeader5TextStyle.copyWith(color: kBlack),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: kWhite,
                          borderRadius: BorderRadius.circular(26),
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
                            borderRadius: BorderRadius.circular(22),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Text(
                        'NAME ON CARD ',
                        style: kHeader5TextStyle.copyWith(color: kBlack),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: kWhite,
                          borderRadius: BorderRadius.circular(26),
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
                            borderRadius: BorderRadius.circular(22),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'EXPIRY DATE',
                            style: kHeader5TextStyle.copyWith(color: kBlack),
                          ),
                          Text(
                            'SECURITY CODE ',
                            style: kHeader5TextStyle.copyWith(color: kBlack),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                              color: kWhite,
                              borderRadius: BorderRadius.circular(26),
                              boxShadow: const [
                                BoxShadow(
                                  color: kGrey,
                                  offset: Offset(4, 4),
                                  blurRadius: 6,
                                )
                              ]),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'mm/yy',
                              hintStyle:
                                  kSubBodyTextStyle.copyWith(color: kGrey),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(22),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                              color: kWhite,
                              borderRadius: BorderRadius.circular(26),
                              boxShadow: const [
                                BoxShadow(
                                  color: kGrey,
                                  offset: Offset(4, 4),
                                  blurRadius: 6,
                                )
                              ]),
                          child: TextFormField(
                            obscureText: true,
                            obscuringCharacter: '*',
                            decoration: InputDecoration(
                              hintText: '123',
                              hintStyle:
                                  kSubBodyTextStyle.copyWith(color: kGrey),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(22),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                      margin: kDividerMargin,
                      child: const Divider(
                        color: kGrey,
                        thickness: 2.0,
                        height: 80,
                      )),
                ),
                Text(
                  'OR',
                  style: kHeader3TextStyle.copyWith(color: kBlack),
                ),
                Expanded(
                  child: Container(
                    margin: kDividerMargin,
                    child: const Divider(
                      color: kGrey,
                      thickness: 2.0,
                      height: 80,
                    ),
                  ),
                ),
              ],
            ),
            const Card(
              shadowColor: kGrey,
              elevation: 7,
              child: ListTile(
                title: Text('Pay on delivery'),
                subtitle: Text('Pay with cash or POS on delivery'),
                trailing: Icon(
                  Icons.radio_button_on_outlined,
                  color: kMainColor,
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(32.0),
            //   child: Center(
            //       child: ClipRRect(
            //     borderRadius: BorderRadius.circular(12),
            //     child: Container(
            //       width: 300,
            //       color: kMainColor,
            //       child: TextButton(
            //         onPressed: () {
            //           // Navigator.push(
            //           //     context,
            //           //     MaterialPageRoute(
            //           //         builder: (context) => const HomePage()));
            //         },
            //         child: const Text(
            //           'Complete Order',
            //           style: kButtonTextStyle,
            //         ),
            //       ),
            //     ),
            //   )),
            // ),
            LargeButton(title: 'Complete Order', action: () {})
          ],
        ),
      ),
    );
  }
}
