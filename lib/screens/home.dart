import 'package:flutter/material.dart';
import 'package:foodapp/constants/constants.dart';
import 'package:foodapp/constants/text_style.dart';
import 'package:foodapp/screens/chat.dart';
import 'package:foodapp/screens/menu.dart';
import 'package:foodapp/screens/orderspage.dart';
import 'package:foodapp/screens/payment.dart';
import 'package:foodapp/screens/profile.dart';
import 'package:foodapp/widgets/elements/icons.dart';
import 'package:foodapp/widgets/navbarwidgets/drawer.dart';
import 'package:foodapp/widgets/navbarwidgets/homewidget.dart';
// import 'package:foodapp/screenss/login.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static String id = 'home_screen';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  static const List<Tab> myMenuTabs = <Tab>[
    Tab(text: 'Meals'),
    Tab(text: 'Sides'),
    Tab(text: 'Snacks'),
    Tab(text: 'Protein'),
    Tab(text: 'Drinks'),
  ];

  late PageController _pageController;

  int _selectedMenuIndex = 0;

  void _onNavBarItemTap(int index) {
    setState(() {
      _selectedMenuIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myMenuTabs.length,
      child: Scaffold(
        backgroundColor: kWhite,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: kBlack, size: 25),
          backgroundColor: kWhite,
          elevation: 0,
          centerTitle: true,
          actions: const [
            CartIcon(),
          ],
        ),
        drawer: const MyDrawer(),
        body: PageView(
          controller: _pageController,
          children: const [
            Center(
              child: HomeWidget(),
            ),
            Center(
              child: Profile(),
            ),
            Center(
              child: LiveChat(),
            ),
            Center(
              child: MenuPage(),
            ),
            Center(
              child: Text('No Favorites yet'),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: kDeepGrey,
            showUnselectedLabels: true,
            selectedItemColor: kMainColor,
            unselectedLabelStyle: kBodyTextStyle,
            selectedLabelStyle: kBodyTextStyle,
            onTap: _onNavBarItemTap,
            currentIndex: _selectedMenuIndex,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profile'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.chat), label: 'Live Chat'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.restaurant_menu_outlined), label: 'Menu'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: 'Favorites'),
            ]),
      ),
    );
  }
}
