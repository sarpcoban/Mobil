import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'products.dart';

class WishListScreen extends StatelessWidget {
  // TODO getx paketini kullanarak Products nesnesi oluşturunuz

  WishListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Liste'),
        ),
        body: Obx(
              () => ListView.builder(
            itemCount: _p.wishListItems.length,
            itemBuilder: (context, index) {
              final item = _p.wishListItems[index];
              return Card(
                key: ValueKey(item.id),
                margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                color: Colors.blue[200],
                child: ListTile(
                  title: Text(item.name),
                  subtitle: Text(item.price.toStringAsFixed(2)),
                  trailing: IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      //TODO ürün sildiriniz.
                    },
                  ),
                ),
              );
            },
          ),
        ));
  }
}