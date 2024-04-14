import 'package:animation_2/models/Product.dart';
import 'package:animation_2/models/ProductItem.dart';
import 'package:flutter/material.dart';

enum HomeState { normal, cart }

class HomeController extends ChangeNotifier {
  HomeState homeState = HomeState.normal;

  List<ProductItem> cart = [];

  void changeHomeState(HomeState state) {
    homeState = state;
    notifyListeners();
  }

  double get totalPrice {
  return cart.fold(0, (total, currentProduct) => total + currentProduct.price * currentProduct.quantity);
}

  void addProductToCart(Product product) {
    for (ProductItem item in cart) {
      if (item.product!.title == product.title) {
        item.increment();
        notifyListeners();
        return;
      }
    }
    cart.add(ProductItem(product: product, quantity: product.quantity));
    notifyListeners();
  }

  void removeProductFromCart(Product product) {
  for (ProductItem item in cart) {
    if (item.product!.title == product.title) {
      item.decrement();
      if (item.quantity <= 0) {
        cart.remove(item);
      }
      notifyListeners();
      return;
    }
  }
}

  int totalCartItems() => cart.fold(
      0, (previousValue, element) => previousValue + element.quantity);
}
