import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'glass_box.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Bg world map
        Center(
          child: SizedBox(
            height: 240,
            child: Image.asset(
              'lib/assets/wrldmap.png',
              fit: BoxFit.fill,
            ),
          ),
        ),
        //Column containing rest of the foreground UI
        Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            //Search Bar
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 15),
                      hintText: "Search",
                      prefixIcon: const Icon(FontAwesomeIcons.magnifyingGlass),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100.0),
                        borderSide: const BorderSide(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            // City widgets's row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GlassBox(
                  height: 160.0,
                  width: 160.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'New Delhi',
                            style: GoogleFonts.aBeeZee(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'lib/assets/thundercopy.png',
                            scale: 4.5,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '33',
                            style: GoogleFonts.aBeeZee(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '\u00B0',
                            style: GoogleFonts.aBeeZee(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.amberAccent[400]),
                          ),
                          Text(
                            '  Thunder',
                            style: GoogleFonts.aBeeZee(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white70),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                GlassBox(
                  height: 160.0,
                  width: 160.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Burla',
                            style: GoogleFonts.aBeeZee(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'lib/assets/windy.png',
                            scale: 4.5,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '43',
                            style: GoogleFonts.aBeeZee(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '\u00B0',
                            style: GoogleFonts.aBeeZee(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.amberAccent[400],
                            ),
                          ),
                          Text(
                            '  Wind',
                            style: GoogleFonts.aBeeZee(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white70),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 45,
            ),
            //More cities button
            SizedBox(
              height: 40,
              width: 120,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Text(
                  'More Cities',
                  style: TextStyle(fontSize: 12),
                ),
                label: const Icon(CupertinoIcons.sparkles),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    side: const BorderSide(width: 1, color: Colors.white),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100))),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            //Details WIdget
            Stack(
              children: [
                //Alignment Container
                SizedBox(
                  // color: Colors.amber,
                  height: 220,
                  width: 320,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 28.0),
                    child:
                        //Data Glass Box
                        GlassBox(
                      height: 200.0,
                      width: 320.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            // color: Colors.amber,
                            width: 130,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                //One Unit
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Precipitation',
                                          style: GoogleFonts.aBeeZee(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '30%',
                                          style: GoogleFonts.aBeeZee(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                //2nd Unit
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Humidity',
                                          style: GoogleFonts.aBeeZee(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '30%',
                                          style: GoogleFonts.aBeeZee(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 100,
                            color: Colors.white,
                            width: 0.3,
                          ),
                          Container(
                            width: 130,
                            // color: Colors.amber,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                //One Unit
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Wind',
                                          style: GoogleFonts.aBeeZee(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '8 km/h',
                                          style: GoogleFonts.aBeeZee(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                //2nd Unit
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Pressure',
                                          style: GoogleFonts.aBeeZee(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '840hPa',
                                          style: GoogleFonts.aBeeZee(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                //Top Image
                Positioned(
                  left: 125,
                  top: 0,
                  child: Image.asset(
                    'lib/assets/thundercopy.png',
                    scale: 5.5,
                  ),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
