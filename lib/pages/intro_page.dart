import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(225, 145, 49, 42),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 25),
              // shop name
              Text(
                'CAPTAIN COOK',
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 25),

              // icon
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Image.asset('lib/images/rice.png'),
              ),
              // title
              Text('THE TASTE OF NIGERIA JOLLOF',
                  style: GoogleFonts.dmSerifDisplay(
                    fontSize: 44,
                    color: Colors.white,
                  )),
              const SizedBox(
                height: 10,
              ),
              // subtitle
              Text(
                'Feel the taste of the most popular jollof rice from anywhere in Nigeria',
                style: TextStyle(
                  color: Colors.grey[300],
                  height: 2,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              // get started button
              MyButton(
                text: 'Get Started',
                onTap: () {
                  // go to menu page
                  Navigator.pushNamed(context, '/menupage');
                },
              )
            ],
          ),
        ));
  }
}
