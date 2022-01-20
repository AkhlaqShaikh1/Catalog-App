import 'package:flutter/material.dart';
import 'package:myapp1/pages/home_page.dart';
import 'package:myapp1/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // bringVegtables();
    return  MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      // initialRoute: "/home",
      routes: { 
        "/": (context) => const LoginPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => const LoginPage() 
      },
    );
  }

  //optional argument is in curly braces with some default value
  //curly braces mei hamsha optional but need a default
  // bringVegtables({bool thaila = false, int rupees = 10}) {}
}
