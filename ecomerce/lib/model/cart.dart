import 'package:flutter/material.dart';

import '../model/shoe.dart';
import 'dart:math';

List<String> adjectives = ['Comfortable', 'Stylish', 'Durable', 'Trendy', 'Versatile'];
List<String> materials = ['leather', 'mesh', 'suede', 'canvas', 'knit'];
List<String> purposes = ['for running', 'for casual wear', 'for sports', 'for daily use', 'for outdoor activities'];

class Cart extends ChangeNotifier{

  String _generateRandomDescription() {
  Random rand = Random();
  String adjective = adjectives[rand.nextInt(adjectives.length)];
  String material = materials[rand.nextInt(materials.length)];
  String purpose = purposes[rand.nextInt(purposes.length)];

  return '$adjective $material ${purpose.toLowerCase()}';
}

String _generateRandomPrice() {
  Random rand = Random();
  double minPrice = 100.0; // Minimum price
  double maxPrice = 300.0; // Maximum price

  double randomPrice = minPrice + rand.nextDouble() * (maxPrice - minPrice);

  return '\$${randomPrice.toStringAsFixed(2)}';
}

  //list of the shoes for sale
  List<Shoe> ShoeShop =[
    Shoe(name: "shoe", imagePath: 'lib/products/1.jpg', description: 'the forward thinking', price: '230'),
    Shoe(name: "shoe", imagePath: 'lib/products/2.jpg', description: 'the forward thinking', price: '230'),
    Shoe(name: "shoe", imagePath: 'lib/products/3.jpg', description: 'the forward thinking', price: '230'),
    Shoe(name: "shoe", imagePath: 'lib/products/4.jpg', description: 'the forward thinking', price: '230'),
    Shoe(name: "shoe", imagePath: 'lib/products/jacket-1.jpg', description: 'the forward thinking', price: '230'),
    Shoe(name: "shoe", imagePath: 'lib/products/jacket-2.jpg', description: 'the forward thinking', price: '230'),
    Shoe(name: "shoe", imagePath: 'lib/products/jacket-3.jpg', description: 'the forward thinking', price: '230'),
    Shoe(name: "shoe", imagePath: 'lib/products/jacket-4.jpg', description: 'the forward thinking', price: '230'),
    Shoe(name: "shoe", imagePath: 'lib/products/jacket-5.jpg', description: 'the forward thinking', price: '230'),
    Shoe(name: "shoe", imagePath: 'lib/products/shoe-2.jpg', description: 'the forward thinking', price: '230'),
    Shoe(name: "shoe", imagePath: 'lib/products/shoe-3.jpg', description: 'the forward thinking', price: '230'),
    Shoe(name: "shoe", imagePath: 'lib/products/shoe-4.jpg', description: 'the forward thinking', price: '230'),
    Shoe(name: "shoe", imagePath: 'lib/products/shoe-5.jpg', description: 'the forward thinking', price: '230'),
    Shoe(name: "shoe", imagePath: 'lib/products/sports-1.jpg', description: 'the forward thinking', price: '230'),
    Shoe(name: "shoe", imagePath: 'lib/products/sports-2.jpg', description: 'the forward thinking', price: '230'),
    Shoe(name: "shoe", imagePath: 'lib/products/sports-3.jpg', description: 'the forward thinking', price: '230'),
    Shoe(name: "shoe", imagePath: 'lib/products/sports-4.jpg', description: 'the forward thinking', price: '230'),
    Shoe(name: "shoe", imagePath: 'lib/products/sports-5.jpg', description: 'the forward thinking', price: '230'),
    Shoe(name: "shoe", imagePath: 'lib/products/watch-1.jpg', description: 'the forward thinking', price: '230'),
    Shoe(name: "shoe", imagePath: 'lib/products/watch-2.jpg', description: 'the forward thinking', price: '230'),
    Shoe(name: "shoe", imagePath: 'lib/products/watch-3.jpg', description: 'the forward thinking', price: '230'),
    Shoe(name: "shoe", imagePath: 'lib/products/watch-4.jpg', description: 'the forward thinking', price: '230'),
    Shoe(name: "shoe", imagePath: 'lib/products/colthes-1.jpg', description: 'the forward thinking', price: '230'),
  ];
  //list of the items in user cart
  List<Shoe> userCart =[];

  //get list of the shoe for sale

  List<Shoe> getShoeList(){
    return ShoeShop;
  }

  //get cart
  List<Shoe> getUserCart(){
    return userCart;
  }
  //add items to cart
  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }
  //remove items from cart
    void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }

}
