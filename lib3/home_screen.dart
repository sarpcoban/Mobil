import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'products.dart';
import 'wish_list_screen.dart';

class HomeScreen extends StatelessWidget {
  // TODO getx paketini kullanarak Products nesnesi oluşturunuz

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ana Ekran'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),

          InkWell(
            child: Container(
              width: 300,
              height: 80,
              color: Colors.red,
              alignment: Alignment.center,

              child: Obx(() => Text(
                'Wish List: ${_p.wishListItems.length}',
                style: const TextStyle(fontSize: 28, color: Colors.white),
              )),
            ),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => WishListScreen())),
          ),

          const SizedBox(
            height: 20,
          ),

          Expanded(

              child: ListView.builder(
                  itemCount: _p.items.length,

                  itemBuilder: (context, index) {
                    final product = _p.items[index];
                    return Card(
                      key: ValueKey(product.id),
                      margin: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      color: Colors.amber.shade300,
                      child: ListTile(
                        title: Text(//TODO ürünün ismini yazdırınız),
                        subtitle: Text(//TODO Product fiyatını 2 basamaklı noktalı sayı şeklinde yazdırınız),

                        trailing: Obx(() => IconButton(
                          onPressed: () {
                            //TODO Product listede yoksa ekleme, varsa silme işlemini yaptırınız
                          },
                          icon: Icon(
                            Icons.favorite,
                            color: product.inWishList.value == false
                                ? Colors.white
                                : Colors.red,
                          ),
                        )),
                      ),
                    );
                  })),
        ],
      ),
    );
  }
}