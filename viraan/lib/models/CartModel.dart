import 'package:flutter_cart/flutter_cart.dart';

int count=0;

class CartModel {
  var message;
  var cart = FlutterCart();


  addToCart(dynamic _product) => {
    count+=1,
    message = cart.addToCart(
        productId: count,//_product.waste_id,
        unitPrice: 12,//_product.waste_price,
        quantity: 1,
        //uniqueCheck: _product.selectedProductType,
        productDetailsObject: _product
    ),
  };


  /// This function is used to decrement the item quantity from cart
  removeItemFromCart(int index) => {
    cart.decrementItemFromCart(index),
  };

  /// This function is used to increment the item quantity into cart
  addItemToCart(int index) {
    cart.incrementItemToCart(index);
  }
}