import 'package:flutter/material.dart';
import 'package:foodapp/constants/constants.dart';
import 'package:foodapp/constants/text_style.dart';
import 'package:foodapp/screens/ordersummary.dart';
import 'package:foodapp/widgets/buttons.dart/large_button.dart';
import 'package:foodapp/widgets/elements/delivery_input_fields.dart';

class Delivery extends StatelessWidget {
  const Delivery({Key? key}) : super(key: key);
  static String id = 'delivery_page';

  @override
  Widget build(BuildContext context) {
    const kDeliveryPadding = EdgeInsets.symmetric(vertical: 8.0);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kWhite,
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
          'Delivery to',
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
      ),
      body: Padding(
        padding: kSignUpBodyPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter delivery address',
              style: kHeader3TextStyle.copyWith(color: kTextBlack),
            ),
            const Padding(
              padding: kDeliveryPadding,
              child: DeliveryFeild(
                title: 'Name:',
              ),
            ),
            const Padding(
                padding: kDeliveryPadding,
                child: DeliveryFeild(
                  title: 'Address:',
                )),
            const Padding(
              padding: kDeliveryPadding,
              child: DeliveryFeild(
                title: 'City:',
              ),
            ),
            const Padding(
              padding: kDeliveryPadding,
              child: DeliveryFeild(
                title: 'Phone:',
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
                const Text(
                  'OR',
                  style: kHeader2TextStyle,
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
            const UseMyCard(
              dtitle: 'Use my profile details',
              dsubtitle: '',
            ),
            LargeButton(
              title: 'Proceed',
              action: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OrderSummary()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class UseMyCard extends StatefulWidget {
  const UseMyCard({Key? key, required this.dtitle, required this.dsubtitle})
      : super(key: key);
  final String dtitle;
  final String dsubtitle;

  @override
  State<UseMyCard> createState() => _UseMyCardState();
}

class _UseMyCardState extends State<UseMyCard> {
  bool isClicked = false;
  String title = '';
  String subtitle = '';
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isClicked = !isClicked;
        });
      },
      child: Card(
        shadowColor: kGrey,
        elevation: 7,
        child: ListTile(
          leading: Text(
            title,
            style: kBodyTextStyle.copyWith(color: kBlack),
          ),
          subtitle:
              Text(subtitle, style: kSubBodyTextStyle.copyWith(color: kBlack)),
          trailing: isClicked
              ? const Icon(
                  Icons.radio_button_on_outlined,
                  color: kMainColorMonochrom,
                )
              : const Icon(
                  Icons.radio_button_on_outlined,
                  color: kMainColor,
                ),
        ),
      ),
    );
  }
}
