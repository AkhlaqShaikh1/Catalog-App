import 'package:flutter/material.dart';
import 'package:myapp1/pages/home_page.dart';
import 'package:myapp1/pages/login_page.dart';
import 'package:myapp1/utils/routes.dart';
import 'package:myapp1/widgets/themes.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // bringVegtables();
    return  MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: { 
        "/": (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage() 
      },
    );
  }

  //optional argument is in curly braces with some default value
  //curly braces mei hamsha optional but need a default
  // bringVegtables({bool thaila = false, int rupees = 10}) {}
}
