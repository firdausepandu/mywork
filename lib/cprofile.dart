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
          scaffoldBackgroundColor: Colors.white,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: const Text("YOUR PROFILE",
                  style: TextStyle(color: Colors.white)),
              centerTitle: true,
              leading: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MainMenu()));
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
            body: Column(
              children: const [
                Text("test"),
              ],
            )));
  }
}
