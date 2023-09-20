// ignore_for_file: file_names

import '../Lists/Cart.dart';

num total = 0;
totalValue() {
  total = 0;
  for (int i = 0; i < Cart.length; i++) {
    total += Cart[i]["Qty"] * Cart[i]["Price"];
  }
  return total;
}
