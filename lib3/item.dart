import 'package:get/get.dart';

class Item {
  int id;
  String name;
  double price;
  RxBool
  inWishList;
  Item(
      {required this.id,
        required this.name,
        required this.price,
        required this.inWishList});
}