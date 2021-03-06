import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp1/core/store.dart';
import 'package:myapp1/models/cart.dart';
import 'package:myapp1/models/catalog.dart';
import 'package:myapp1/utils/routes.dart';
import 'package:myapp1/widgets/home_widgets/catalog_header.dart';
import 'package:myapp1/widgets/home_widgets/catalog_list.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Akhlaq";

  final String title = "Catalog App";
  final url = "https://api.jsonbin.io/b/61f63fca1960493ad184f092";
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    // await Future.delayed(const Duration(seconds: 2));
    // final catalogJson =
    // await rootBundle.loadString("assests/files/products.json");
    final response = await http.get(Uri.parse(url));
    final catalogJson = response.body;
    final decodeData = jsonDecode(catalogJson);
    var productsData = decodeData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromJson(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final _cart = (VxState.store as MyStore).cart;
    return Scaffold(
      backgroundColor: context.canvasColor,
      floatingActionButton: VxBuilder(
        mutations: const {AddMutation, RemoveMutation},
        builder: (context, _, __) => FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, MyRoutes.cartRoute);
          },
          backgroundColor:
              context.theme.floatingActionButtonTheme.backgroundColor,
          child: const Icon(
            Icons.shopping_cart_outlined,
            color: Colors.white,
          ),
        ).badge(
          count: _cart.items.length,
          size: 22,
          color: Vx.gray200,
          textStyle: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CatalogHeader(),
              if (CatalogModel.items.isNotEmpty && CatalogModel.items != null)
                const CatalogList().py16().expand()
              else
                const CircularProgressIndicator().centered().expand(),
            ],
          ),
        ),
      ),
    );
  }
}
