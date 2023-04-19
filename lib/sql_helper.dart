import 'package:flutter/foundation.dart';
//TODO sqffite paketini kurup import ediniz

class SQLHelper {
  static Future<void> createTables(sql.Database database) async {
    await database.execute("""CREATE TABLE items(
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        title TEXT,
        description TEXT,
        createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
      )
      """);
  }

  static Future<sql.Database> db() async {
    return sql.openDatabase(
      'database.db',
      version: 1,
      onCreate: (sql.Database database, int version) async {
        await createTables(database);
      },
    );
  }


  static Future<int> createItem(String title, String? descrption) async {
    //TODO Insert işlemini gerçekleştiren kodu yazınız
  }

  static Future<List<Map<String, dynamic>>> getItems() async {
    // TODO listedeki bütün elemanları getiren kodu yazınız
  }


  static Future<List<Map<String, dynamic>>> getItem(int id) async {
    // TODO listedeki bir ürünü getiren kodu yazınız
  }


  static Future<int> updateItem(
      int id, String title, String? descrption) async {
    final db = await SQLHelper.db();

    final data = {
      'title': title,
      'description': descrption,
      'createdAt': DateTime.now().toString()
    };

    // TODO Update işlemini gerçekleştiren kod parçasını yazınız
    return result;
  }

  static Future<void> deleteItem(int id) async {
    final db = await SQLHelper.db();
    try {
      // TODO Delete işlemini gerçekleştiren kod parçasını yazınız
    } catch (err) {
      debugPrint("Something went wrong when deleting an item: $err");
    }
  }
}