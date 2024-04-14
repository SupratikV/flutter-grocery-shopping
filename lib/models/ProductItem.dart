import 'Product.dart';

class ProductItem {
  int quantity;
  final Product? product;

  ProductItem({this.quantity = 1, required this.product});

  void increment() {
    quantity++;
  }
  // double get totalPrice {
  // return quantity * product.price;
  // }

  void decrement() {
    quantity--;
  }

  double get price => product?.price ?? 0.0; // Add this line
  // void add() {}

  // void substract() {}
}
