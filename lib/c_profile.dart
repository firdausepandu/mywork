import 'package:MyWork/menu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CProfile extends StatefulWidget {
  const CProfile({Key? key}) : super(key: key);

  @override
  State<CProfile> createState() => _CProfileState();
}

class _CProfileState extends State<CProfile> {
  //final _formKey = GlobalKey<FormState>();

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
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(20.0),
                child:
                    Icon(Icons.account_circle, size: 100, color: Colors.white),
              ),
              const Text(
                'CREATE ACCOUNT',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              const Divider(
                height: 20,
                thickness: 5,
                indent: 180,
                endIndent: 180,
                color: Colors.white,
              ),
              Form(
                  child: Padding(
                padding: const EdgeInsets.fromLTRB(60, 10, 60, 10),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                          label: Text(
                            "Name on IC/Passport",
                            style: TextStyle(color: Colors.grey),
                          ),
                          labelStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.cyanAccent),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.cyanAccent),
                          )),
                    ),
                    const SizedBox(height: 10),
                    customField('Password'),
                    const SizedBox(height: 10),
                    customField('Contact No.'),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const Text(
                          'Gender',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                        const SizedBox(height: 30),
                        Radio(
                            value: "male",
                            groupValue: "Gender",
                            onChanged: (value) {
                              print(value);
                            }),
                        const Text(
                          'Male',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                        Radio(
                            value: "female",
                            groupValue: 'female',
                            onChanged: (value) {
                              print(value);
                            }),
                        const Text(
                          'Female',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            fixedSize: const Size(40, 40),
                            shape: const CircleBorder(),
                            backgroundColor: Colors.yellow),
                        onPressed: () {},
                        child: const Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ))
                  ],
                ),
              ))
            ],
          ),
        ));
  }

  Widget customField(String label) {
    return TextFormField(
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        label: Text(
          label,
          style: TextStyle(color: Colors.grey),
        ),
        labelStyle: const TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.cyanAccent),
          borderRadius: BorderRadius.circular(90.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.cyanAccent),
          borderRadius: BorderRadius.circular(90.0),
        ),
      ),
    );
  }
}
