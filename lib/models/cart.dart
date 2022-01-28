import 'package:myapp1/models/catalog.dart';

class CartModel {
  // Catalog Field
  late CatalogModel _catalog;

  // Collection of IDs
  final List<int> _itemIds = [];

  // Get Catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    _catalog = newCatalog;
  }

  // Get Items in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  // total Price
  num get totalPrice =>
      items.fold(0, (total, current) => total += current.price);

  //Add Item

  void add(Item item) {
    _itemIds.add(item.id);
  }

  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
