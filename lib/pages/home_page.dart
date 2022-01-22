import 'package:flutter/material.dart';
import 'package:myapp1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Akhlaq";
  final String title = "Catalog App";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(title),
      ),
      body: Center(
        child:Text("Welcome to $days of Flutter by $name"),
      ),
      drawer: const MyDrawer(),
    );
  }
}
