import 'package:flutter/material.dart';
import 'package:foodapp/constants/constants.dart';
import 'package:foodapp/screens/delivery.dart';
import 'package:foodapp/screens/home.dart';
import 'package:foodapp/screens/login.dart';
import 'package:foodapp/screens/menu.dart';
import 'package:foodapp/screens/menu_details.dart';
import 'package:foodapp/screens/orderspage.dart';
import 'package:foodapp/screens/ordersummary.dart';
import 'package:foodapp/screens/payment.dart';
import 'package:foodapp/screens/profile.dart';
import 'package:foodapp/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Palette.kThemeColor,
      ),
      home: const Login(),
      initialRoute: SplashScreen.id,
      routes: {
        Login.id: (context) => const Login(),
        MenuPage.id: (context) => const MenuPage(),
        MenuDetails.id: (context) => const MenuDetails(),
        HomePage.id: (context) => const HomePage(),
        SplashScreen.id: (context) => const SplashScreen(),
        OrderPage.id: (context) => const OrderPage(),
        Delivery.id: (context) => const Delivery(),
        OrderSummary.id: (context) => const OrderSummary(),
        Payment.id: (context) => const Payment(),
        Profile.id: (context) => const Profile(),
      },
    );
  }
}
