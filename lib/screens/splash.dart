import 'package:flutter/material.dart';
import 'package:foodapp/constants/constants.dart';
import 'package:foodapp/screens/login.dart';
import 'package:foodapp/widgets/buttons.dart/large_button.dart';

import '../constants/text_style.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static String id = 'splash_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: const AssetImage(
                'images/food_bkg.jpg',
              ),
              fit: BoxFit.cover,
              colorFilter:
                  ColorFilter.mode(kBlack.withOpacity(0.9), BlendMode.darken)),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Zorex Foodies',
                  style: kHeader1TextStyle.copyWith(color: kWhite)),
              Text(
                'We know you have a lot to cover',
                style: kHeader4TextStyle.copyWith(color: kWhite),
              ),
              Text(
                ' and still need food within such tight timing',
                style: kHeader4TextStyle.copyWith(color: kWhite),
              ),
              Text(
                ' we got you covered, with just 3 clicks ',
                style: kHeader4TextStyle.copyWith(color: kWhite),
              ),
              Text(
                ' you\'ll get your favorite meal at your door step ',
                style: kHeader4TextStyle.copyWith(color: kWhite),
              ),
              LargeButton(
                title: 'Get Started',
                action: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const Login()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
