import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 60,
          left: 10,
          right: 10,
          child: Image.asset('lib/assets/wrldmap.png'),
        ),
        Positioned(
          top: 110,
          left: 110,
          right: 110,
          child: Image.asset('lib/assets/cloud.png'),
        ),
        Positioned(
          top: 280,
          left: 165,
          right: 2,
          child: Text('Thunder',
              style: GoogleFonts.aBeeZee(
                  fontSize: 18, fontWeight: FontWeight.bold)),
        ),
        Positioned(
          top: 320,
          left: 145,
          right: 2,
          child: Text(
            '13\u00B0',
            style:
                GoogleFonts.aBeeZee(fontSize: 90, fontWeight: FontWeight.bold),
          ),
        ),
        Positioned(
          right: 2,
          left: 2,
          top: 470,
          child: Container(
            height: 120,
            width: 300,
            // color: Colors.orange,
            child: Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                //
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 0.0),
                      child: Image.asset(
                        'lib/assets/cloud1.png',
                        scale: 0.65,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0, top: 0),
                      child: Text(
                        '01:00 pm',
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 4.0, left: 12),
                      child: Text(
                        '11\u00B0',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                //
                const SizedBox(
                  width: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 0.0),
                      child: Image.asset(
                        'lib/assets/cloud2.png',
                        scale: 0.65,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0, top: 0),
                      child: Text(
                        '04:00 pm',
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 4.0, left: 12),
                      child: Text(
                        '10\u00B0',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 0.0),
                      child: Image.asset(
                        'lib/assets/cloud3.png',
                        scale: 0.65,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0, top: 0),
                      child: Text(
                        '07:00 pm',
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 4.0, left: 12),
                      child: Text(
                        '8\u00B0',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
