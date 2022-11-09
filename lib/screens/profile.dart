import 'package:flutter/material.dart';
import 'package:foodapp/constants/constants.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);
  static String id = 'profile_page';

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: kBlack, size: 25),
          backgroundColor: kWhite,
          leading: GestureDetector(onTap: () {
            Navigator.pop(context);
            const Icon(
              Icons.arrow_back,
            );
          }),
          title: const Text('Nyikwagh Moses'),
        ),
        body: Column(
          children: [
            Container(
              child: Image.asset(
                'images/moses.JPG',
                height: 300,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fitWidth,
              ),
            ),
            Row(
              children: const [
                Text('Name: '),
                Text('Nyikwagh Moses'),
              ],
            ),
            Row(
              children: const [
                Text('Address: '),
                Text('Dantat Estate, Kubwa'),
              ],
            ),
            Row(
              children: const [
                Text('City: '),
                Text('Abuja'),
              ],
            ),
          ],
        ));
  }
}
