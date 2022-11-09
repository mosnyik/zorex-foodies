import 'package:flutter/material.dart';
import 'package:foodapp/constants/constants.dart';
import 'package:foodapp/constants/text_style.dart';
import 'package:foodapp/widgets/signinwidgets/reg.dart';
import 'package:foodapp/widgets/signinwidgets/signin.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  static String id = 'login_screen';

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  int _selectedTabIndex = 0;

  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'Sign In'),
    Tab(text: 'Sign Up'),
  ];

  void _onTabTap(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            leading: Image.asset(
              'images/logo1.png',
              fit: BoxFit.fitWidth,
            ),
            backgroundColor: kWhite,
            bottom: TabBar(
              tabs: myTabs,
              controller: _tabController,
              unselectedLabelColor: kMainColorMonochrom,
              labelColor: kMainColor,
              labelStyle: kHeader3TextStyle,
              indicatorWeight: 4,
              indicatorPadding: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 4,
              ),
            ),
          ),
          body: TabBarView(
            controller: _tabController,
            children: const [
              SignIn(),
              Reg(),
            ],
          )),
    );
  }
}
