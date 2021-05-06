import 'dart:math';

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category {
  final String name;
  final List<SubCategory> list;
  final double sum;

  Category(this.name, this.list, this.sum);
}

class SubCategory {
  final String name;
  final List<String> list;
  final double sum;

  SubCategory(this.name, this.list, this.sum);
}

var kCategoryList = [
  Category(
      'Beauty Products',
      [
        SubCategory('Cream', [], 110.0),
        SubCategory('Face Care', [], 60.0),
        SubCategory('Lipstick', [], 50.0),
        SubCategory('Oil', [], 90.0),
        SubCategory('Powder', [], 50.0),
        SubCategory('Trimmers', [], 30.0),
        SubCategory('Shaving Kit', [], 60.0),
      ],
      450.0),
  Category(
      'Clothing',
      [
        SubCategory('Men Wear', [], 120.0),
        SubCategory('Women Wear', [], 180.0),
        SubCategory('Kids Wear', [], 60.0),
      ],
      360.0),
  Category(
      'Electronics',
      [
        SubCategory('Heating Appliances', [], 150.0),
        SubCategory('Refrigerators', [], 100.0),
        SubCategory('Smart Phones', [], 180.0),
        SubCategory('Televisions', [], 60.0),
      ],
      480.0),
  Category(
      'Food',
      [
        SubCategory('Cereals', [], 20.0),
        SubCategory('Chocolates', [], 70.0),
        SubCategory('Drinks', [], 40.0),
        SubCategory('Dry Fruits', [], 30.0),
        SubCategory('Frozen Food', [], 50.0),
        SubCategory('Snacks', [], 70.0),
        SubCategory('Spices', [], 60.0),
      ],
      340.0),
  Category(
      'Gifts',
      [
        SubCategory('Teddies', [], 120),
        SubCategory('Pic Frames', [], 40),
        SubCategory('Toys', [], 90),
        SubCategory('Special', [], 40),
      ],
      290.0),
  Category(
      'Health',
      [
        SubCategory('Medicines', [], 150),
        SubCategory('Bandages', [], 30),
        SubCategory('Medical Equipment', [], 90),
      ],
      270.0),
  Category(
      'Household',
      [
        SubCategory('Bed Sheet', [], 60.0),
        SubCategory('Cookware', [], 80.0),
        SubCategory('Curtains', [], 100.0),
        SubCategory('Decor', [], 40.0),
        SubCategory('Dining & Servings', [], 50.0),
        SubCategory('Gardening', [], 20.0),
        SubCategory('Hardware Tools', [], 90.0),
        SubCategory('Storage Containers', [], 60.0),
        SubCategory('Travel Bags', [], 120.0),
      ],
      620.0),
  Category('Miscellaneous', [], 0.0),
  Category(
      'Stationary',
      [
        SubCategory('Bag', [], 120.0),
        SubCategory('Book', [], 150.0),
        SubCategory('Craft', [], 30.0),
        SubCategory('Registers', [], 110.0),
        SubCategory('Writing Utensils', [], 60.0),
      ],
      470.0)
];

List<Color> kPieChartColors = [];
void generateColors() {
  int j = 0;
  for (int i = 10; i >= 3; i--, j += 25) {
    kPieChartColors.add(Color.fromRGBO(j, 255, 255, i / 10));
    kPieChartColors.add(Color.fromRGBO(255, j, 255, i / 10));
    kPieChartColors.add(Color.fromRGBO(255, 255, j, i / 10));
  }
  // for (int i = 0; i < 255; i += 50) {
  //
  // }
}

double getCategorySum() {
  double total;
  for (var ele in kCategoryList) {
    total += ele.sum;
  }
  return total;
}

const kTextInputDecoration = InputDecoration(
  hintText: '',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.redAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.redAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);
