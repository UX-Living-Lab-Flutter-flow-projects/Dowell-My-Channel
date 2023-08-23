import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

String customLoginFormFunction(String dateTimeString) {
  return dateTimeString.substring(0, 10);
}

String findProductIdByName(
  dynamic productsJson,
  String productName,
) {
  for (var product in productsJson['products']) {
    if (product['product_name'] == productName) {
      return (product['id']);
    }
  }
  return "Not found";
}

String processAnnouncementDescription(String userInput) {
  String formattedDescription = userInput.replaceAll('\n', '\\n');

  return formattedDescription;
}
