import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';

class CommonModel {
  static const String tableNameTestInfo = 'TEST_INFO';
  static const String tableNameTestAnswer = 'TEST_ANSWER';
  static const String tableNameCorrectAnswer = 'CORRECT_ANSWER';

  static Future<void> _createTables(Database database) async {
    await database.execute("""
        CREATE TABLE $tableNameTestInfo(
          id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
          // テスト名
          name TEXT NOT NULL,
          // テスト種別
          type INTEGER NOT NULL DEFAULT 0,
          // 問題数
          question_count INTEGER NOT NULL DEFAULT 0,
          // 受験回数
          test_count INTEGER NOT NULL DEFAULT 0,
        )
      """);
    await database.execute("""
        CREATE TABLE $tableNameTestAnswer(
          id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
          // test_infoテーブルの主キー
          test_id INTEGER DEFAULT 0,
          // テスト回数
          test_count INTEGER DEFAULT 0,
          // 問題番号
          question_number INTEGER DEFAULT 0,
          // 解答番号
          answer_number INTEGER DEFAULT 0,
          // 解答時間
          answer_time INTEGER DEFAULT 0,
        )
      """);
    await database.execute("""
        CREATE TABLE $tableNameCorrectAnswer(
          id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
          // test_infoテーブルの主キー
          test_id INTEGER DEFAULT 0,
          // 問題番号
          question_number INTEGER DEFAULT 0,
          // 答案番号
          answer_number INTEGER DEFAULT 0,
        )
      """);
  }

  static Future<Database> db() async {
    if (kIsWeb) {
      databaseFactory = databaseFactoryFfiWeb;
    }
    return openDatabase(
      'infinity_won.db',
      version: 1,
      onCreate: (Database database, int version) async {
        await _createTables(database);
      },
    );
  }
}
