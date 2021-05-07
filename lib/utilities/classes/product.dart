import 'package:stock_signature/utilities/classes/category.dart';
import 'package:stock_signature/utilities/classes/subcategory.dart';

class Product {
  String name;
  String category;
  String subCategory;
  double price;
  String unit;
  double sum;

  Product(
    this.name,
    this.category,
    this.subCategory,
    this.price,
    this.sum,
    this.unit,
  );
}
