class Category {
  String name;
  List<Product> Products;
  Category(this.name, this.Products);
}

class Product {
  String name;
  int price;
  bool inStock;
  Product(this.name, this.inStock, this.price);
}
