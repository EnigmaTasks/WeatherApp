//Imports
import 'package:flutter/material.dart';

//Pages
import 'package:weather_app/Ankush/Explore.dart';
import 'package:weather_app/Ankush/HomePage.dart';
import 'package:weather_app/Deepak/ProfilePage.dart';
import 'package:weather_app/Deepak/SearchPage.dart';

//Assets
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//Main
void main() {
  runApp(const MaterialAppBase());
}

/*
- Base Material App Widget
- Bottom Navigation Bar Implemented Here
- Hence Stateful widgets used
*/

class MaterialAppBase extends StatefulWidget {
  const MaterialAppBase({super.key});

  @override
  State<MaterialAppBase> createState() => _MaterialAppBaseState();
}

//This already includes scaffold, no need to implement in other pages
class _MaterialAppBaseState extends State<MaterialAppBase> {
  //Navigation Bar
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = const <Widget>[
    HomePage(),
    SearchPage(),
    ExplorePage(),
    ProfilePage()
  ];

  //Build()
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
          child: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: GNav(
                rippleColor: Colors.black,
                hoverColor: Colors.black,
                backgroundColor: Colors.black,
                gap: 10,
                activeColor: Colors.black,
                iconSize: 20,
                padding: const EdgeInsets.all(9),
                duration: const Duration(milliseconds: 250),
                tabBackgroundColor: Colors.grey[700]!,
                color: Colors.white,
                tabs: const [
                  GButton(icon: FontAwesomeIcons.homeAlt, text: 'Home'),
                  GButton(icon: FontAwesomeIcons.search, text: 'Search'),
                  GButton(icon: Icons.explore_sharp, text: 'Explore'),
                  GButton(
                      icon: Icons.account_circle_rounded,
                      text: 'Profile',
                      iconSize: 29)
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(
                    () {
                      _selectedIndex = index;
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
