library bitesize_screencasts.customer.customer;

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

    return new Customer(mergedFirstName, mergedLastName, 1, 0);
  }

}
