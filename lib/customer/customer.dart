library bitesize_screencasts.customer.customer;

import 'dart:math';


class Customer {

  String firstName;
  String lastName;
  int age;
  num wealth;

  Customer(this.firstName, this.lastName, this.age, this.wealth);

  Customer merge(Customer otherCustomer) {
    String mergedFirstName = (this.firstName.length > otherCustomer.firstName.length) ?
                                this.firstName : otherCustomer.firstName;

    String mergedLastName = (this.lastName.length > otherCustomer.lastName.length) ?
                                this.lastName : otherCustomer.lastName;

    int oldestAge = 0; //max(this.age, otherCustomer.age);
    num mostWealth = 0; //max(this.wealth, otherCustomer.wealth);

    return new Customer(mergedFirstName, mergedLastName, oldestAge, mostWealth);
  }

}
