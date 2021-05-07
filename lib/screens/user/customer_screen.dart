import 'package:flutter/material.dart';
import 'package:stock_signature/components/app_body.dart';
import 'package:stock_signature/utilities/classes/customer.dart';

class CustomerScreen extends StatefulWidget {
  @override
  _CustomerScreenState createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {
  List<Customer> list = [
    Customer(
      'Vipul Kumar Maurya',
      'MMMUT',
      'Surya Nagar',
      8303094982,
      'vipulkm009@gmail.com',
    ),
    Customer(
      'Ankur Maurya',
      'KVRDSO',
      'Surya Nagar',
      8303094982,
      'ankur009@gmail.com',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) =>
            buildCustomerCard(context, index),
      ),
    );
  }

  Widget buildCustomerCard(BuildContext context, int index) {
    return Container(
      child: Card(
        child: Column(
          children: <Widget>[
            Text(
              list[index].name,
            ),
          ],
        ),
      ),
    );
  }
}
