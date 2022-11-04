import 'package:MyWork/c_profile.dart';
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
        appBar: AppBar(
          title: const Text("MyWork - 012 594 2896",
              style: TextStyle(color: Colors.white)),
          centerTitle: true,
          leading: GestureDetector(
            onTap: () {/* Write listener code here */},
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Color(0xff29347d),
                child: Icon(Icons.menu),
              ),
            ),
          ),
          actions: <Widget>[
            // Padding(
            //   padding: const EdgeInsets.only(right: 20.0),
            //   child: GestureDetector(
            //     onTap: () {},
            //     child: const Icon(Icons.settings_outlined, color: Colors.white),
            //   ),
            // ),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const CProfile()));
              },
              icon: const Icon(Icons.settings_outlined, color: Colors.white),
            ),
          ],
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.fromLTRB(8, 30, 8, 8),
              color: const Color.fromARGB(255, 73, 213, 231),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Company Profile",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.home_outlined,
                      color: Colors.white,
                    ),
                    iconSize: 100,
                  ),
                  TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ))),
                    child: const Text("Click Here"),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(8, 30, 8, 8),
              color: const Color.fromARGB(255, 73, 213, 231),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Attendance Clocking",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.restore_outlined,
                      color: Colors.white,
                    ),
                    iconSize: 100,
                  ),
                  TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ))),
                    child: const Text("Click Here"),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(8, 30, 8, 8),
              color: const Color.fromARGB(255, 73, 213, 231),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Employee Handbook",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.contact_page_outlined,
                      color: Colors.white,
                    ),
                    iconSize: 100,
                  ),
                  TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ))),
                    child: const Text("Click Here"),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(8, 30, 8, 8),
              color: const Color.fromARGB(255, 73, 213, 231),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Company Holiday",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.flight_outlined,
                      color: Colors.white,
                    ),
                    iconSize: 100,
                  ),
                  TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ))),
                    child: const Text("Click Here"),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(8, 30, 8, 8),
              color: const Color.fromARGB(255, 73, 213, 231),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Company Notice",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_active_outlined,
                      color: Colors.white,
                    ),
                    iconSize: 100,
                  ),
                  TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ))),
                    child: const Text("Click Here"),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(8, 30, 8, 8),
              color: const Color.fromARGB(255, 73, 213, 231),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Employee Notice",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.people_outlined,
                      color: Colors.white,
                    ),
                    iconSize: 100,
                  ),
                  TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ))),
                    child: const Text("Click Here"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
