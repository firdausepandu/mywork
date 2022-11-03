import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'MyWork',
        theme: ThemeData(
            fontFamily: GoogleFonts.raleway().fontFamily,
            //fontFamily: 'Raleway',
            // This is the theme of your application.
            //
            // Try running your application with "flutter run". You'll see the
            // application has a blue toolbar. Then, without quitting the app, try
            // changing the primarySwatch below to Colors.green and then invoke
            // "hot reload" (press "r" in the console where you ran "flutter run",
            // or simply save your changes to "hot reload" in a Flutter IDE).
            // Notice that the counter didn't reset back to zero; the application
            // is not restarted.
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: const Color(0xff29347d)),




        home: Scaffold(
            body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 70),
                child: Image.asset(
                  "asset/img/MyWork_Employee.png",
                  height: 100,
                  width: 100,
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon:
                          const Icon(Icons.person, color: Colors.cyanAccent),
                      border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.cyanAccent, width: 0.0),
                        borderRadius: BorderRadius.circular(90.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.cyanAccent, width: 0.0),
                        borderRadius: BorderRadius.circular(90.0),
                      ),
                      labelText: 'USERNAME',
                      labelStyle: const TextStyle(color: Colors.grey)),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: '*****',
                    prefixIcon: const Icon(Icons.lock, color: Colors.cyanAccent),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(90.0),
                      borderSide: BorderSide(width: 5),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.cyanAccent, width: 0.0),
                      borderRadius: BorderRadius.circular(90.0),
                    ),
                    labelText: 'PASSWORD',
                    labelStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              Container(
                  height: 80,
                  padding: const EdgeInsets.all(20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                      backgroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                    ),
                    child: const Text(
                      'SIGN IN',
                      style: TextStyle(color: Color(0xff29347d)),
                    ),
                    onPressed: () {},
                  )),
              Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                  child: const Text("OR",style: TextStyle(fontSize: 24, color: Colors.white,
                  )
                  )
              ),
              Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                  child: const Text("login with",style: TextStyle(fontSize: 24, color: Colors.white,
                  )
                  )
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "asset/img/facebook.png",
                    height: 50,
                    width: 50,
                  ),
                  Image.asset(
                    "asset/img/twitter.png",
                    height: 50,
                    width: 50,
                  ),
                  Image.asset(
                    "asset/img/google.png",
                    height: 50,
                    width: 50,
                  ),
                ],
              )
            ],
          ),
        )));
  }
}
