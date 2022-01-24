import 'package:flutter/material.dart';
import 'package:myapp1/models/catalog.dart';
import 'package:myapp1/widgets/drawer.dart';
import 'package:myapp1/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Akhlaq";
  final String title = "Catalog App";
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(4, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(item: dummyList[index]);
          },
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
