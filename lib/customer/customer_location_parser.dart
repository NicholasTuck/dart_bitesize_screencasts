library bitesize_screencasts.customer.customer_location_parser;

import "customer.dart";
import "dart:html";

class CustomerLocationParser{

  static Customer parseFromLocationFragment() {
    Uri locationUri = Uri.parse(window.location.href);
    Map parameters = {};
    locationUri.fragment.split(',').forEach((value) {
      List keyValue = value.split('=');
      parameters[keyValue[0]] = keyValue[1];
    });

    return new Customer(parameters['firstName'], parameters['lastName'], num.parse(parameters['age']), num.parse(parameters['wealth']));
  }

}
