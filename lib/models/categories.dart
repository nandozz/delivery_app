import 'package:deliv_food/models/items.dart';

class Categories {
  String? categories;
  // late List<Items> items;
  List<Items> items = <Items>[];

  // // int get jumlahItems => items.length;

  Categories({required this.categories, required this.items});
}
