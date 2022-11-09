import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../constants/text_style.dart';

class Snacks extends StatelessWidget {
  const Snacks({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120,
        width: 150,
        child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.vertical,
            itemBuilder: (_, index) {
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: kWhite,
                                borderRadius: BorderRadius.circular(16),
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
                                        'images/logo_rice1.png',
                                        height: 100,
                                        width: 170,
                                      ),
                                      const Positioned(
                                        top: 8,
                                        right: -2,
                                        child: Icon(
                                          Icons.favorite_border_outlined,
                                          color: kMainColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Text(
                                  'Vegetable Curry',
                                  style: kMenuCardTextStyle,
                                ),
                                const Text(
                                  'N1,200',
                                  style: kPriceTextStyle,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: kWhite,
                                borderRadius: BorderRadius.circular(16),
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
                                  padding: const EdgeInsets.only(bottom: 16.0),
                                  child: Stack(
                                    children: [
                                      Image.asset(
                                        'images/logo_rice1.png',
                                        height: 100,
                                        width: 170,
                                      ),
                                      const Positioned(
                                        top: 8,
                                        right: -2,
                                        child: Icon(
                                          Icons.favorite,
                                          color: kMainColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Text(
                                  'Vegetable Curry',
                                  style: kMenuCardTextStyle,
                                ),
                                const Text(
                                  'N1,200',
                                  style: kPriceTextStyle,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            }));
  }
}
