import 'package:flutter/material.dart';
import 'package:menu_app/generated/categoryProduct.dart';
import 'package:menu_app/models/category_model.dart';

class Categories extends ChangeNotifier {
  List<Category> categories = [];

  void addCategories(List<Category> categories) {
    this.categories = categories;
    notifyListeners();
  }

  List<Category> getCategories() {
    return this.categories;
  }

  void fetchCategories() {
    print('fetch categories');
    CategoryProducts.forEach((key, value) {
      Iterable<Product> products =
          value.map((e) => Product(e['name'], e['instock'], e['price']));
      print(products.length);
      this.categories.add(Category(key, products.toList()));
    });
    // notifyListeners();
  }
}
