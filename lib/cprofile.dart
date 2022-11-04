import 'dart:ui';

import 'package:MyWork/menu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CProfile extends StatelessWidget {
  const CProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          fontFamily: GoogleFonts.raleway().fontFamily,
          primarySwatch: Colors.cyan,
          scaffoldBackgroundColor: const Color(0xff29347d),
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text("YOUR PROFILE",
                style: TextStyle(color: Colors.white)),
            centerTitle: true,
            leading: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MainMenu()));
              },
              child: const Icon(Icons.arrow_back, color: Colors.white),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                    onPressed: () {
                      //TODO go to edit user profile
                    },
                    style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        side: const BorderSide(
                          width: 2.0,
                          color: Colors.white,
                        )),
                    child: const Text('Edit Profile',
                        style: TextStyle(color: Colors.white))),
              )
            ],
          ),
          body: Container(
            alignment: Alignment.center,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Icon(Icons.account_circle,
                      size: 100, color: Colors.white),
                ),
                Text(
                  'CREATE ACCOUNT',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                Divider(
                  height: 20,
                  thickness: 5,
                  indent: 80,
                  endIndent: 80,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ));
  }
}
