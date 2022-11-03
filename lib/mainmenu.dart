import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Main Menu",
      theme: ThemeData(
          fontFamily: GoogleFonts.raleway().fontFamily,
          primarySwatch: Colors.cyan,
          scaffoldBackgroundColor: Colors.white),
      home: Scaffold(
        appBar:AppBar(
          title: const Text("MyWork - 012 594 2896",style: TextStyle(color: Colors.white)),
          centerTitle: true,
          leading: GestureDetector(
            onTap: () { /* Write listener code here */ },
            child: const CircleAvatar(
              radius: 30,
              backgroundColor: Color(0xff29347d),
              child: Icon(Icons.menu)
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right:20.0),
              child: GestureDetector(
                onTap: (){},
                child: const Icon(Icons.settings_outlined,color:Colors.white),
              ),
            ),

          ],
        ),
        body: const Center()

      ),
    );
  }
}
