import 'package:infinity_won/data/test_info.dart';
import 'package:sqflite/sqflite.dart';
import 'package:infinity_won/model/common_model.dart';

class TestInfoModel {
  /// 新規テストを作成する
  static Future<int> createItem(
    String name,
    int type,
    int questionCount,
  ) async {
    final db = await CommonModel.db();

    final data = {
      'name': name,
      'type': type,
      'question_count': questionCount,
    };
    final id = await db.insert(
      CommonModel.tableNameTestInfo,
      data,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    return id;
  }

  /// テストを削除する
  static Future<int> deleteItem(String testId) async {
    final db = await CommonModel.db();

    final id = await db.delete(
      CommonModel.tableNameTestInfo,
      where: 'id = ?',
      whereArgs: [testId.toString()],
    );
    return id;
  }

  /// 全テストデータ取得
  static Future<List<TestInfo>> getAllTestInfo() async {
    final db = await CommonModel.db();
    final queryResult = await db.rawQuery('''
        select *
        from
           ${CommonModel.tableNameTestInfo} 
        order by id
      ''');
    print('getTagByDateOf ¥n$queryResult');

    return TestInfo.fromList(queryResult);
  }

  /// 指定したテストデータ取得
  static Future<List<TestInfo>> getTestInfo(int testId) async {
    final db = await CommonModel.db();
    final queryResult = await db.rawQuery('''
        select *
        from
           ${CommonModel.tableNameTestInfo} 
        where
          id = '$testId'
        order by id
      ''');
    print('getTagByDateOf ¥n$queryResult');

    return TestInfo.fromList(queryResult);
  }
}