import 'package:flutter/material.dart';
import 'package:orderingsystem/model/bread.dart';

class BreadShop extends ChangeNotifier{
  // bread for sale list
  final List<Bread> _shop = [
    //bread 1
    Bread(
      name: 'Croissant',
      price: '5.00',
      imagepath: "lib/images/croissant.jpeg",
    ),
    //bread 2
    Bread(
      name: 'Sandwich',
      price: '6.00',
      imagepath:"lib/images/sandwich.jpeg" ,
    ),
    //bread 3
    Bread(
      name: 'Burger',
      price: '4.00',
      imagepath: "lib/images/burger.jpeg",
    ),
    //bread 4
    Bread(
      name: 'Toast',
      price: '5.00',
      imagepath: "lib/images/toast.jpeg",
    ),
  ];
  // user cart
  List<Bread> _userCart = [];
  // get bread list
  List<Bread> get breadShop => _shop;
  // get user cart
  List<Bread> get userCart => _userCart;
  // add item to cart
  void addItemToCart(Bread bread){
    _userCart.add(bread);
    notifyListeners();
  }
  // remove item from cart
  void removeItemFromCart(Bread bread){
    _userCart.remove(bread);
    notifyListeners();
  }
}