import 'package:flutter/material.dart';
import 'package:stock_signature/utilities/constants/global_constants.dart';
import 'screens/user/dashboard.dart';

void main() {
  generateColors();
  runApp(StockSignature());
}

class StockSignature extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Dashboard(),
    );
  }
}
