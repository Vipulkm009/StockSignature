import 'package:stock_signature/utilities/classes/subcategory.dart';

class Category {
  String name;
  List<SubCategory> list;
  double sum;

  Category(
    this.name,
    this.list,
    this.sum,
  );
}
