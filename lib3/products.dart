import 'package:get/get.dart';
import 'dart:math';
import 'item.dart';

class Products extends GetxController {

  final RxList<Item> _items = List.generate(
      100,
          (index) => Item(
          id: index,
          name: 'Product $index',
          price: Random().nextDouble() * 100,
          inWishList: //TODO otomatik güncelleme yeteneğini kullandıran kodu yazınız.


  List<Item> get items {
    return [..._items];
  }

  List<Item> get wishListItems {
    //TODO elemanları getiriniz
  }

  void addItem(int id) {
    //TODO eleman ekleyiniz
  }

  void removeItem(int id) {
    //TODO eleman çıkarınız
  }
}