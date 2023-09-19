import '../Lists/Cart.dart';

AddToCart(List Product, int Index) {
  if (Product[Index]["InCart"] == false) {
    Product[Index]["InCart"] = true;
    Product[Index]["Qty"] += 1;
    Cart.add(Product[Index]);
  } else {
    final int indexInCart = Cart.indexWhere(
      (product) => product["Name"] == Product[Index]["Name"],
    );
    if (indexInCart != -1) {
      Cart[indexInCart]["Qty"] += 1;
    } else {
      print("Error: Product not found in cart.");
    }
  }
}
