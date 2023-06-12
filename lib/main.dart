//Imports
import 'package:flutter/material.dart';

//Pages
import 'package:weather_app/Ankush/Explore.dart';
import 'package:weather_app/Ankush/HomePage.dart';
import 'package:weather_app/Ankush/location_service.dart';
import 'package:weather_app/Debasish/ProfilePage.dart';
import 'package:weather_app/Debasish/SearchPage.dart';

//Assets
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:dark_light_button/dark_light_button.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';

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

  //location
  String? country = '', adminArea = '';
  void getLocation() async {
    final service = LocationService();
    final locationData = await service.getLocation();
    if (locationData != null) {
      final placeMark = await service.getPlaceMark(locationData: locationData);
      setState(() {
        country = placeMark?.country ?? "couldn't get country";
        adminArea = placeMark?.administrativeArea ?? "couldn't get state";
      });
    }
  }

  //init
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  //Build()
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Changing Theme based on boolean value
      theme: isDarkTheme ? ThemeData.dark() : ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _selectedIndex == 0
            ? AppBar(
                leadingWidth: 240,
                leading: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(DateFormat('yMMMMd').format(DateTime.now()),
                          style: GoogleFonts.monda(
                              color: isDarkTheme ? Colors.white : Colors.black)
                          // isDarkTheme
                          //     ? const TextStyle(color: Colors.white)
                          //     : const TextStyle(color: Colors.black),
                          ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0, left: 2.0),
                      child: Row(
                        children: [
                          Icon(Icons.location_on,
                              size: 15,
                              color: isDarkTheme ? Colors.white : Colors.black),
                          Text(
                            country!.toUpperCase(),
                            style: GoogleFonts.ubuntu(
                                color:
                                    isDarkTheme ? Colors.white : Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            ', ${adminArea!}',
                            style: TextStyle(
                                color:
                                    isDarkTheme ? Colors.white : Colors.black),
                          )
                        ],
                      ),
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
              )
            : _selectedIndex == 1
                ?
                //Implement Search Page AppBar Here
                AppBar(
                    title: const Text(
                      'Search',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                : null,
        backgroundColor: isDarkTheme == true ? Colors.black : Colors.white,
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: isDarkTheme ? Colors.black : Colors.grey[100],
          ),
          child: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: GNav(
                rippleColor: Colors.black,
                hoverColor: Colors.black,
                backgroundColor: isDarkTheme ? Colors.black : Colors.grey[100]!,
                gap: 10,
                activeColor: Colors.black,
                iconSize: 20,
                padding: const EdgeInsets.all(9),
                duration: const Duration(milliseconds: 250),
                tabBackgroundColor: Colors.grey[400]!,
                color: isDarkTheme ? Colors.white : Colors.black,
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
