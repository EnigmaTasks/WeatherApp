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
    return Column(
      children: [
        SizedBox(
          height: 260,
          child: Stack(
            children: [
              Positioned(
                top: 70,
                left: 10,
                right: 10,
                child: Image.asset('lib/assets/wrldmap.png'),
              ),
              Positioned(
                top: 50,
                left: 95,
                right: 95,
                child: Image.asset(
                  'lib/assets/cloud.png',
                  scale: 0.8,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          'Thunder',
          style: GoogleFonts.aBeeZee(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            '  13',
            style:
                GoogleFonts.aBeeZee(fontSize: 100, fontWeight: FontWeight.bold),
          ),
          Text(
            '\u00B0',
            style: GoogleFonts.aBeeZee(
                fontSize: 90,
                fontWeight: FontWeight.bold,
                color: Colors.amberAccent[400]),
          ),
        ]),
        const SizedBox(
          height: 60,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
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
                  padding: EdgeInsets.only(top: 10.0, left: 12),
                  child: Text(
                    '11\u00B0',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                )
              ],
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
                  padding: EdgeInsets.only(top: 10.0, left: 12),
                  child: Text(
                    '10\u00B0',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                )
              ],
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
                  padding: EdgeInsets.only(top: 10.0, left: 12),
                  child: Text(
                    '8\u00B0',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}
