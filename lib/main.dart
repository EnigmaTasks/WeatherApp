//Imports
import 'package:flutter/material.dart';

//Pages
import 'package:weather_app/Ankush/Explore.dart';
import 'package:weather_app/Ankush/HomePage.dart';
import 'package:weather_app/Debasish/ProfilePage.dart';
import 'package:weather_app/Debasish/SearchPage.dart';

//Assets
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:dark_light_button/dark_light_button.dart';
import 'package:intl/intl.dart';

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

//
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

  //Theme
  bool isDarkTheme = true;

  //Build()
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Changing Theme based on boolean value
      theme: isDarkTheme ? ThemeData.dark() : ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leadingWidth: 120,
          leading: Column(
            children: [
              Text(
                DateFormat('yMMMMd').format(DateTime.now()),
                style: isDarkTheme
                    ? const TextStyle(color: Colors.white)
                    : const TextStyle(color: Colors.black),
              ),
            ],
          ),
          backgroundColor: isDarkTheme ? Colors.black : Colors.white,
          actions: [
            //the theme switch button
            DarlightButton(
              type: Darlights.DarlightTwo,
              onChange: (ThemeMode theme) {
                setState(() {
                  isDarkTheme = !isDarkTheme;
                });
              },
            ),
          ],
        ),
        backgroundColor: isDarkTheme == true ? Colors.black : Colors.white,
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
