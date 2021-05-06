import 'package:stock_signature/utilities/classes/category.dart';
import 'package:stock_signature/utilities/classes/subcategory.dart';

class Product {
  String name;
  // Category category;
  // SubCategory subCategory;
  double price;
  String unit;
  double sum;

  Product(this.name, this.price, this.sum, this.unit);
}
