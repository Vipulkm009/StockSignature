class Customer {
  String name;
  String companyName;
  String address;
  int mobileNo;
  String emailID;

  Customer(
    this.name,
    this.companyName,
    this.address,
    this.mobileNo,
    this.emailID,
  );

  Map<String, dynamic> toJson() => {
        'name': name,
        'company_name': companyName,
        'address': address,
        'mobile_no': mobileNo,
        'email_id': emailID,
      };
}
