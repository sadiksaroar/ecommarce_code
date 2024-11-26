import 'package:e_comarce_project/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartProvider extends ChangeNotifier {
  final List<Product> _cart = [];

  List<Product> get cart => _cart;

  void toggleFavorite(Product product) {
    if (_cart.contains(product)) {
      for (Product element in _cart) {
        element.quantity++;
      }
    } else {
      _cart.add(product);
    }
    notifyListeners();
  }

  incremetQtn(int index) => _cart[index].quantity++;
  decremetQtn(int index) => _cart[index].quantity--;
  totalPrice() {
    double total1 = 0.0;
    for (Product elemet in _cart) {
      total1 += elemet.price * elemet.quantity;
    }
    return total1;
  }

  static CartProvider of(
    BuildContext context, {
    bool listen = true,
  }) {
    return Provider.of<CartProvider>(
      context,
      listen: listen,
    );
  }
}
