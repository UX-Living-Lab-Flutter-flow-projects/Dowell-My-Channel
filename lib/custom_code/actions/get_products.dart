// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'package:http/http.dart' as http;

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!

Future<void> getProducts() async {
  var productsJson = {};

  const String getProductsUrl =
      'https://100093.pythonanywhere.com/api/getproducts/';
  final postBody = json.encode({"username": "uxliveadmin"});

  try {
    final response = await http.post(Uri.parse(getProductsUrl),
        body: postBody, headers: {'Content-Type': 'application/json'});

    if (response.statusCode == 200) {
      // Convert response body to JSON format
      productsJson = jsonDecode(response.body);
    } else {
      print("Error getting products");
    }
  } catch (e) {
    print("$e");
  }

  if (productsJson['products'] == null) {
    productsJson['products'] = [];
  }

  productsJson['products']?.add({"id": "general", "product_name": "General"});

  // save products to the app state
  FFAppState().productsJson = productsJson;

  // print(" FFAppState's Products Json:");

  // print(FFAppState().productsJson);
}
