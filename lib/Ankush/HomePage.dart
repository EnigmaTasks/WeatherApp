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
                  'lib/assets/thundercopy.png',
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
            SizedBox(
              // color: Colors.amber,
              width: 90,
              height: 110,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'lib/assets/p1.png',
                        scale: 6,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        '01:00 pm',
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        '11\u00B0',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            //
            SizedBox(
              // color: Colors.amber,
              width: 90,
              height: 110,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'lib/assets/rain.png',
                        scale: 5.5,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        '04:00 pm',
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        '13\u00B0',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            //
            SizedBox(
              // color: Colors.amber,
              width: 90,
              height: 110,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'lib/assets/p3.png',
                        scale: 5.8,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        '07:00 pm',
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        '18\u00B0',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
