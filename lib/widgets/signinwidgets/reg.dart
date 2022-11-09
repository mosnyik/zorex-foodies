import 'package:flutter/material.dart';
import 'package:foodapp/screens/home.dart';
import 'package:foodapp/screens/login.dart';

import '../../constants/constants.dart';
import '../../constants/text_style.dart';

class Reg extends StatelessWidget {
  const Reg({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kSignUpBodyPadding,
      child: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Full Name',
            style: kSignUpHeaderTextStyle,
          ),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      kTextBlack.withOpacity(0.9), BlendMode.softLight),
                  fit: BoxFit.fitWidth,
                  image: const AssetImage(
                    'images/logo1.png',
                  ),
                ),
                //color: kWhite,
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
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          const Text(
            'E-mail address',
            style: kSignUpHeaderTextStyle,
          ),
          Container(
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
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          const Text(
            'Password',
            style: kSignUpHeaderTextStyle,
          ),
          Container(
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
              obscureText: true,
              decoration: InputDecoration(
                suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Center(
                child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                width: 300,
                color: kMainColor,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                  child: const Text(
                    'Create Account',
                    style: kButtonTextStyle,
                  ),
                ),
              ),
            )),
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
                style: kOrTextStyle,
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
          const Center(
            child: Text(
              'Sign Up using:',
              style: kAlternativeSignin,
            ),
          ),
          Padding(
            padding: kAlternativeLogginRowPadding,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: kAlternativeLogginImageWidth,
                  height: kAlternativeLogginImageHeight,
                  margin: kAlternativeLogginImageMargin,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(
                        'images/google.png',
                      )),
                      boxShadow: [
                        BoxShadow(
                          color: kGrey,
                          blurRadius: 12,
                          offset: Offset(6, 4),
                        ),
                      ]),
                ),
                Container(
                  width: kAlternativeLogginImageWidth,
                  height: kAlternativeLogginImageHeight,
                  margin: kAlternativeLogginImageMargin,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                        'images/facebook.png',
                      )),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: kGrey,
                          blurRadius: 12,
                          offset: Offset(6, 4),
                        ),
                      ]),
                ),
                Container(
                  width: kAlternativeLogginImageWidth,
                  height: kAlternativeLogginImageHeight,
                  margin: kAlternativeLogginImageMargin,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'images/twitter.jpeg',
                      ),
                    ),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: kGrey,
                        blurRadius: 12,
                        offset: Offset(6, 4),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
