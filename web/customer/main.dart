import "package:bitesize_screencasts/customer/customer.dart";
import "package:intl/intl.dart";
import "dart:html";

final wealthFormatter = new NumberFormat("###,###,###", "en_US");


void main () {

  Customer bruceWillis = new Customer("Bruce", "Willis", 59, 25000000);
  Customer johnMcClane = new Customer("John", "McClane", 32, 40000);

  writeCustomerToDiv(bruceWillis, "customer1");
  writeCustomerToDiv(johnMcClane, "customer2");

  document.querySelector("#mergeButton").onClick.listen((_) {
    Customer mergedCustomer = bruceWillis.merge(johnMcClane);
    print("Merged Customer Age: ${mergedCustomer.age}");
    writeCustomerToDiv(mergedCustomer, "mergedCustomer");
  });

}


void writeCustomerToDiv(Customer customer, String divId) {
  Element element = document.querySelector("#$divId");
  element.querySelector(".name").setInnerHtml("${customer.firstName} ${customer.lastName}");
  element.querySelector(".age").setInnerHtml(customer.age.toString());
  element.querySelector(".wealth").setInnerHtml(wealthFormatter.format(customer.wealth));
}


