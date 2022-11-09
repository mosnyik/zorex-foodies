import 'package:flutter/material.dart';
import 'package:foodapp/constants/constants.dart';
import 'package:foodapp/constants/text_style.dart';
import 'package:foodapp/widgets/navbarwidgets/drinks.dart';
import 'package:foodapp/widgets/navbarwidgets/protein.dart';
import 'package:foodapp/widgets/navbarwidgets/sides.dart';
import 'package:foodapp/widgets/navbarwidgets/snacks.dart';

import '../widgets/navbarwidgets/meals.dart';
// import 'package:foodapp/screenss/login.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);
  static String id = 'menu_screen';

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage>
    with SingleTickerProviderStateMixin {
  // TabBar Elements

  // List of tabs for TabView
  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'Meals'),
    Tab(text: 'Sides'),
    Tab(text: 'Snacks'),
    Tab(text: 'Protein'),
    Tab(text: 'Drinks'),
  ];

  late TabController _tabController;

  int _selectedTabBarIndex = 0;

  static const List<Widget> _TabBarItems = <Widget>[
    Text('Index 0 : Meals'),
    Text('Index 1 :Sides'),
    Text('Index 2 :Snacks'),
    Text('Index 3:Protein'),
    Text('Index 4 :Drinks'),
  ];

  void _onTabBarItemTap(int index) {
    setState(() {
      _selectedTabBarIndex = index;
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
  // Menu elelments

  int _selectedMenuIndex = 0;

// BottomBarNavigation function
  void _onNavBarItemTap(int index) {
    setState(() {
      _selectedMenuIndex = index;
    });
    pageController.jumpToPage(index);
  }

  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        backgroundColor: kWhite,
        appBar: AppBar(
          backgroundColor: kWhite,
          elevation: 5,
          centerTitle: true,
          title: const Text(
            'Our Menu',
            style: kPopularMealTextStyle,
          ),
          bottom: TabBar(
            onTap: _onTabBarItemTap,
            controller: _tabController,
            tabs: myTabs,
            labelColor: kMainColor,
            unselectedLabelColor: kBlack,
            labelStyle: kTabBarTextStyle,
            isScrollable: true,
            indicatorWeight: 2,
            indicatorPadding: const EdgeInsets.only(bottom: 4),
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: const [
            Meals(),
            Sides(),
            Snacks(),
            Protein(),
            Drinks(),
          ],
        ),
      ),
    );
  }
}
