import 'package:stock_signature/utilities/classes/subcategory.dart';

class Category {
  final String name;
  final List<SubCategory> list;
  final double sum;

  Category(this.name, this.list, this.sum);
}
