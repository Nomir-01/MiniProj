// ignore_for_file: file_names, non_constant_identifier_names

import 'package:miniproj/Lists/Deals.dart';

import '../Lists/FIshList.dart';
import '../Lists/FruitList.dart';
import '../Lists/MeatList.dart';
import '../Lists/SnacksList.dart';
import '../Lists/VegList.dart';

List productList = [];
FindList(category) {
  if (category == "Fish") {
    productList = Fish;
  } else if (category == "Meat") {
    productList = Meat;
  } else if (category == "Fruits") {
    productList = Fruits;
  } else if (category == "Vegetables") {
    productList = Vegetables;
  } else if (category == "Snacks") {
    productList = Snacks;
  } else if (category == "Deals") {
    productList = Deals;
  }
  return productList;
}
