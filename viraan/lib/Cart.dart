import 'package:flutter/material.dart';
import 'CartBody.dart';
import 'EmptyCart.dart';
import 'models/CartModel.dart';

class Cart extends StatelessWidget {
  final CartModel _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEED8C1),
      body: (_cart.cart.cartItem.length == 0)? EmptyCart()
       : CartBody(),
    );
  }
}
