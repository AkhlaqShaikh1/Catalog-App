import 'package:flutter/material.dart';
import 'package:myapp1/core/store.dart';
import 'package:myapp1/pages/cart_page.dart';
import 'package:myapp1/pages/home_page.dart';
import 'package:myapp1/pages/login_page.dart';
import 'package:myapp1/utils/routes.dart';
import 'package:myapp1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(
    VxState(
      store: MyStore(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // bringVegtables();
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.loginRoute,
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
        MyRoutes.cartRoute: (context) => const CartPage()
      },
    );
  }

  //optional argument is in curly braces with some default value
  //curly braces mei hamsha optional but need a default
  // bringVegtables({bool thaila = false, int rupees = 10}) {}
}
