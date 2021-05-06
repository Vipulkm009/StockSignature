import 'package:flutter/material.dart';
import 'package:stock_signature/components/app_body.dart';
import 'package:stock_signature/components/drawer_menu.dart';
import 'package:stock_signature/components/rounded_button.dart';
import 'package:stock_signature/utilities/classes/category.dart';
import 'package:stock_signature/utilities/classes/product.dart';
import 'package:stock_signature/utilities/classes/subcategory.dart';
import 'package:stock_signature/utilities/constants/global_constants.dart';

class AddPurchase extends StatefulWidget {
  static String id = 'AddProduct';
  @override
  _AddPurchaseState createState() => _AddPurchaseState();
}

class _AddPurchaseState extends State<AddPurchase> {
  Category category;
  SubCategory subCategory;
  Product product;

  @override
  void initState() {
    super.initState();
    category = kCategoryList[0];
    subCategory = kCategoryList[0].list[0];
  }

  @override
  Widget build(BuildContext context) {
    return AppBody(
      resizeToAvoidBottomPadding: true,
      appBar: AppBar(
        title: Text('Stock Signature'),
        elevation: 12.0,
      ),
      drawer: DrawerMenu(),
      body: SafeArea(
        child: SingleChildScrollView(
            // child: Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.all(15.0),
            //       child: TextField(
            //         textAlign: TextAlign.center,
            //         onChanged: (value) {
            //           product.name = value;
            //         },
            //         decoration: kTextInputDecoration.copyWith(
            //           hintText: 'Enter product name',
            //         ),
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.all(15.0),
            //       child: DropdownButton(
            //         value: category,
            //         hint: Text(
            //           'Choose Category',
            //         ),
            //         onChanged: (value) {
            //           setState(() {
            //             category = value;
            //             product.category = value;
            //           });
            //         },
            //         items: kCategoryList.map((value) {
            //           return DropdownMenuItem(
            //             value: value,
            //             child: Text(value.name),
            //           );
            //         }).toList(),
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.all(15.0),
            //       child: DropdownButton(
            //         value: subCategory,
            //         hint: Text(
            //           'Choose Sub-Category',
            //         ),
            //         onChanged: (value) {
            //           setState(() {
            //             subCategory = value;
            //             product.subCategory = value;
            //           });
            //         },
            //         items: kCategoryList[(category == null
            //                 ? 0
            //                 : kCategoryList.indexOf(category))]
            //             .list
            //             .map((value) {
            //           return DropdownMenuItem(
            //             value: value,
            //             child: Text(value.name),
            //           );
            //         }).toList(),
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.all(15.0),
            //       child: TextField(
            //         keyboardType: TextInputType.number,
            //         textAlign: TextAlign.center,
            //         onChanged: (value) {
            //           product.price = value as double;
            //         },
            //         decoration: kTextInputDecoration.copyWith(
            //           hintText: 'Enter product price',
            //         ),
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.all(15.0),
            //       child: TextField(
            //         textAlign: TextAlign.center,
            //         onChanged: (value) {
            //           product.unit = value;
            //         },
            //         decoration: kTextInputDecoration.copyWith(
            //           hintText: 'Enter product unit',
            //         ),
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.all(15.0),
            //       child: TextField(
            //         keyboardType: TextInputType.number,
            //         textAlign: TextAlign.center,
            //         onChanged: (value) {
            //           product.count = value as int;
            //         },
            //         decoration: kTextInputDecoration.copyWith(
            //           hintText: 'Enter product count',
            //         ),
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.symmetric(vertical: 50.0),
            //       child: RoundButton(
            //         buttonTitle: 'Add Product',
            //         height: 30.0,
            //         minimumWidth: 300.0,
            //         fontsize: 20.0,
            //         onPressed: () async {},
            //       ),
            //     ),
            //   ],
            // ),
            ),
      ),
    );
  }
}
