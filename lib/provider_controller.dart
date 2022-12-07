import 'package:flutter/material.dart';

class Cartprovider with ChangeNotifier{
  List<Map<String,dynamic>> _cartModel = [];
  List get cartmodel => _cartModel;

  bool _isDarkModeClick = false;

  bool get isDarkModeClick => _isDarkModeClick;

  int _initialValue = 1;

  int get intialvalue => _initialValue;

  increaseInitialValue(){
    _initialValue++;
    notifyListeners();
  }

  decreaseInitialValue(){
    _initialValue--;
    notifyListeners();
  }


  setTheme(bool theme){
    _isDarkModeClick = theme;
    notifyListeners();
  }

  addToCart(Map<String,dynamic> products){
    _cartModel.add(products);
    notifyListeners();
  }
}

