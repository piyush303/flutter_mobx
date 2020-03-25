import 'dart:ui';

import 'package:mobx/mobx.dart';

class ColorItem {
  final Color colorCode;

  final String name;

  final int price;

//  @observable
//  int quantity;

  ColorItem(this.colorCode, this.name, this.price);
}