library bitesize_screencasts.test.customer.customer;
import "package:unittest/unittest.dart";
import "package:bitesize_screencasts/customer/customer.dart";

void main() {
  test("Merging two customers should choose the longest name", () {
    Customer bruceWayne = new Customer("Bruce", "Wayne", 35, 10000000);
    Customer batman = new Customer("Mr", "Batman", 23, 100);

    Customer mergedCustomer = bruceWayne.merge(batman);

    expect(mergedCustomer.firstName, equals("Bruce"));
    expect(mergedCustomer.lastName, equals("Batman"));

  });

}