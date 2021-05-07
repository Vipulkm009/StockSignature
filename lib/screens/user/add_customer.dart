import 'package:flutter/material.dart';
import 'package:stock_signature/screens/user/customer_screen.dart';
import 'package:stock_signature/utilities/classes/customer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddCustomer extends StatefulWidget {
  // const AddCustomer({Key key}) : super(key: key);
  final Customer customer;

  AddCustomer({@required this.customer});

  @override
  _AddCustomerState createState() => _AddCustomerState();
}

class _AddCustomerState extends State<AddCustomer> {
  final db = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    TextEditingController _nameController = new TextEditingController();
    TextEditingController _companyNameController = new TextEditingController();
    TextEditingController _addressController = new TextEditingController();
    TextEditingController _mobileNoController = new TextEditingController();
    TextEditingController _emailIDController = new TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Customer',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 30.0),
                    child: TextField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        labelText: 'Enter Customer\'s Name',
                        labelStyle: Theme.of(context).textTheme.display2,
                        helperText: 'Customer Full Name',
                        helperStyle: Theme.of(context).textTheme.display2,
                        prefixIcon: Icon(
                          Icons.person_outlined,
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ),
                      controller: _nameController,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 30.0),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'Enter Customer\'s Company Name',
                        labelStyle: Theme.of(context).textTheme.display2,
                        helperText: 'Company Name',
                        helperStyle: Theme.of(context).textTheme.display2,
                        prefixIcon: Icon(
                          Icons.home_work_outlined,
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ),
                      controller: _companyNameController,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 30.0),
                    child: TextField(
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      decoration: InputDecoration(
                        labelText: 'Enter Customer\'s Address',
                        labelStyle: Theme.of(context).textTheme.display2,
                        helperText: 'Full Address with PIN',
                        helperStyle: Theme.of(context).textTheme.display2,
                        prefixIcon: Icon(
                          Icons.home_outlined,
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ),
                      controller: _addressController,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 30.0),
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        labelText: 'Enter Customer\'s Mobile No.',
                        labelStyle: Theme.of(context).textTheme.display2,
                        helperText: 'Number without Country Code',
                        helperStyle: Theme.of(context).textTheme.display2,
                        prefixIcon: Icon(
                          Icons.phone_outlined,
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ),
                      controller: _mobileNoController,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 30.0),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Enter Customer\'s Email ID',
                        labelStyle: Theme.of(context).textTheme.display2,
                        helperText: 'Correct Email Address',
                        helperStyle: Theme.of(context).textTheme.display2,
                        prefixIcon: Icon(
                          Icons.phone_outlined,
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ),
                      controller: _emailIDController,
                    ),
                  ),
                  RaisedButton(
                    child: Text(
                      'Continue',
                    ),
                    onPressed: () async {
                      widget.customer.name = _nameController.text;
                      widget.customer.companyName = _companyNameController.text;
                      widget.customer.address = _addressController.text;
                      widget.customer.mobileNo =
                          int.parse(_mobileNoController.text);
                      widget.customer.emailID = _emailIDController.text;
                      await db
                          .collection('customer')
                          .add(widget.customer.toJson());
                      Navigator.of(context).popUntil((route) => route.isFirst);
                    },
                  ),
                ],
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(50.0),
              ),
            ),
            elevation: 7.0,
          ),
        ),
      ),
    );
  }
}
