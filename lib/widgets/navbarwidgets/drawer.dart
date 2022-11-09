import 'package:flutter/material.dart';
import 'package:foodapp/constants/constants.dart';
import 'package:foodapp/constants/text_style.dart';
import 'package:foodapp/screens/profile.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) => Drawer(
        child: Drawer(
          backgroundColor: kMainColor,
          child: ListView(children: [
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(children: [
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/moses.JPG'),
                          radius: 100,
                        ),
                      ),
                      Text(
                        'Nyikwagh Moses',
                        style: kHeader2TextStyle.copyWith(color: kWhite),
                      ),
                      Text('nyikwagh.moses@example.com',
                          style: kBodyTextStyle.copyWith(color: kWhite)),
                    ]),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      ListTile(
                        onTap: () {
                          Navigator.pushNamed(context, Profile.id);
                        },
                        leading: const Icon(
                          Icons.person_outline_outlined,
                          color: kWhite,
                        ),
                        title: Text('Profile',
                            style: kBodyTextStyle.copyWith(color: kWhite)),
                      ),
                      const Divider(
                        color: kWhite,
                        indent: 16,
                        endIndent: 16,
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.shopping_cart_outlined,
                          color: kWhite,
                        ),
                        title: Text('My Orders',
                            style: kBodyTextStyle.copyWith(color: kWhite)),
                      ),
                      const Divider(
                        color: kWhite,
                        indent: 16,
                        endIndent: 16,
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.privacy_tip_outlined,
                          color: kWhite,
                        ),
                        title: Text('Privacy Policy',
                            style: kBodyTextStyle.copyWith(color: kWhite)),
                      ),
                      const Divider(
                        color: kWhite,
                        indent: 16,
                        endIndent: 16,
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.settings,
                          color: kWhite,
                        ),
                        title: Text('Settings',
                            style: kBodyTextStyle.copyWith(color: kWhite)),
                      ),
                      const Divider(
                        color: kWhite,
                        indent: 16,
                        endIndent: 16,
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.help_outline_outlined,
                          color: kWhite,
                        ),
                        title: Text('Help',
                            style: kBodyTextStyle.copyWith(color: kWhite)),
                      ),
                      const Divider(
                        color: kWhite,
                        indent: 16,
                        endIndent: 16,
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.logout_outlined,
                          color: kWhite,
                        ),
                        title: Text('Sign Out',
                            style: kBodyTextStyle.copyWith(color: kWhite)),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ]),
        ),
      );
}
