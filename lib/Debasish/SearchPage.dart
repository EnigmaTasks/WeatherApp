import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'glass_box.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
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
        Column(
          children: [
            SizedBox(
              height: 350,
              child: Stack(
                children: [
                  Positioned(
                    top: 120,
                    right: 0,
                    left: 0,
                    child: Image.asset(
                      'lib/assets/wrldmap.png',
                      scale: 1.8,
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 35,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 0.0),
                              child: Text(
                                'New Delhi',
                                style: GoogleFonts.aBeeZee(
                                    fontSize: 28, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0),
                              child: Image.asset(
                                'lib/assets/thundercopy.png',
                                scale: 4.5,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Text(
                                '33\u00B0 Thunder',
                                style: GoogleFonts.aBeeZee(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 95.0),
                              child: Text(
                                'Burla',
                                style: GoogleFonts.aBeeZee(
                                    fontSize: 28, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 5.0, left: 95),
                              child: Image.asset(
                                'lib/assets/windy.png',
                                scale: 4.5,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 95.0),
                              child: Text(
                                '43\u00B0 Wind',
                                style: GoogleFonts.aBeeZee(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 280,
                    left: 120,
                    child: SizedBox(
                      height: 50,
                      width: 150,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Text('More Cities'),
                        label: Icon(CupertinoIcons.sparkles),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            side:
                                const BorderSide(width: 3, color: Colors.white),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100))),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        // Column(
        //   children: [
        //     Positioned(
        //       top: 10,
        //       left: 10,
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //         children: [
        //           Column(
        //             crossAxisAlignment: CrossAxisAlignment.center,
        //             children: [
        //               Padding(
        //                 padding: EdgeInsets.only(top: 0.0),
        //                 child: Text(
        //                   'Precipitation',
        //                   style: GoogleFonts.aBeeZee(
        //                       fontSize: 18, fontWeight: FontWeight.bold),
        //                 ),
        //               )
        //             ],
        //           ),
        //         ],
        //       ),
        //     ),
        //   ],
        // ),
      ],
    );
  }
}
