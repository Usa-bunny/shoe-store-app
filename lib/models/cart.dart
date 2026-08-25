import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: "Air Jordan 1 Retro Low",
      price: "210",
      imagePath: "lib/images/shoe1.jpg",
      description: "Timeless classic design crafted with premium leather for long-lasting style and durability.",
    ),
    Shoe(
      name: "Nike Air Max 270",
      price: "155",
      imagePath: "lib/images/shoe2.jpg",
      description: "Features an extra-thick air cushion unit to deliver maximum all-day comfort.",
    ),
    Shoe(
      name: "Adidas Ultraboost Light",
      price: "190",
      imagePath: "lib/images/shoe3.jpg",
      description: "Super lightweight running shoe offering high energy return with every stride.",
    ),
    Shoe(
      name: "Puma RS-X Efekt",
      price: "120",
      imagePath: "lib/images/shoe4.jpg",
      description: "Retro-futuristic style blending bold colors to create an eye-catching look.",
    ),
    Shoe(
      name: "New Balance 550",
      price: "140",
      imagePath: "lib/images/shoe5.jpg",
      description: "Vintage silhouette inspired by 80s basketball courts, perfect for daily casual streetwear.",
    ),
  ];

  // list of item in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get list of user cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add item to user cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from user cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
