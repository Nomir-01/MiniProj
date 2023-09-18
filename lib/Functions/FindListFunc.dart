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
  }
  return productList;
}
