// ignore_for_file: file_names, non_constant_identifier_names

import '../Lists/Favs.dart';

AddToFav(List Product, int index) {
  if (Product[index]["IsFav"] == false) {
    Product[index]["IsFav"] = true;
    Fav.add(Product[index]);
  } else {
    Product[index]["IsFav"] = false;
    Fav.remove(Product[index]);
  }
}
