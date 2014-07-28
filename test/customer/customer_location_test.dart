import "package:bitesize_screencasts/customer/customer.dart";
import "package:bitesize_screencasts/customer/customer_location_parser.dart";
import "package:unittest/unittest.dart";
import "dart:html";

void main() {


  group("Customer Location Tests", () {

    test("Customer Location Parser should parse customer entirely", () {
      window.location.href = "#firstName=Walter,lastName=White,age=43,wealth=95000";
      Customer expectedCustomer = new Customer("Walter", "White", 43, 95000);

      Customer parsedCustomer = CustomerLocationParser.parseFromLocationFragment();

      expect(expectedCustomer.firstName, equals(parsedCustomer.firstName));
      expect(expectedCustomer.lastName, equals(parsedCustomer.lastName));
      expect(expectedCustomer.age, equals(parsedCustomer.age));
      expect(expectedCustomer.wealth, equals(parsedCustomer.wealth));

    });


  });

}