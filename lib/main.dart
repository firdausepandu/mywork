import 'package:flutter/material.dart';

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
          scaffoldBackgroundColor: Color(0xff29347d)
        ),
        home: Scaffold(
            body: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(padding: const EdgeInsets.fromLTRB(20, 20, 20, 70), child: Image.asset("asset/img/MyWork_Employee.png",height: 100,width: 100,),),
                  Container(padding: const EdgeInsets.fromLTRB(20, 20, 20, 0), child: TextField(decoration: InputDecoration(prefixIcon:Icon(Icons.person,color:Colors.cyanAccent),border: OutlineInputBorder(borderRadius: BorderRadius.circular(90.0),), labelText: 'USERNAME',labelStyle: TextStyle(color: Colors.grey)),),),
                  Container(padding: const EdgeInsets.fromLTRB(20, 20, 20, 0), child: TextField(obscureText: true, decoration: InputDecoration(prefixIcon:Icon(Icons.lock,color:Colors.cyanAccent),border: OutlineInputBorder(borderRadius: BorderRadius.circular(90.0),borderSide: BorderSide(width: 5)), labelText: 'PASSWORD',labelStyle: TextStyle(color: Colors.grey)),),),
                  Container(height: 80, padding: const EdgeInsets.all(20), child: ElevatedButton(style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(50),primary: Colors.white), child: const Text('SIGN IN',style: TextStyle(color: Color(0xff29347d)),), onPressed: () {},)),
                ],
              ),
            )));
  }
}