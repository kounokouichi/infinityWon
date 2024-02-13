import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';

class CommonModel {
  static const String tableNameTestInfo = 'TEST_INFO';
  static const String tableNameTestAnswer = 'TEST_ANSWER';
  static const String tableNameCorrectAnswer = 'CORRECT_ANSWER';

  static Future<void> _createTables(Database database) async {
    /**
     * テスト名
     * テスト種別
     * 問題数
     * 受験回数
     */
    await database.execute("""
        CREATE TABLE $tableNameTestInfo(
          id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
          name TEXT NOT NULL,
          type INTEGER NOT NULL DEFAULT 0,
          question_count INTEGER NOT NULL DEFAULT 0,
          test_count INTEGER NOT NULL DEFAULT 0
        );
      """);
      /**
       * test_infoテーブルの主キー
       * テスト回数
       * 問題番号
       * 解答番号
       * 解答時間
       */
      await database.execute("""
        CREATE TABLE $tableNameTestAnswer(
          id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
          test_id INTEGER DEFAULT 0,
          test_count INTEGER DEFAULT 0,
          question_number INTEGER DEFAULT 0,
          answer_number INTEGER DEFAULT 0,
          answer_time INTEGER DEFAULT 0
        );
      """);
      /**
       * test_infoテーブルの主キー
       * 問題番号
       * 答案番号
       */
      await database.execute("""
        CREATE TABLE $tableNameCorrectAnswer(
          id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
          test_id INTEGER DEFAULT 0,
          question_number INTEGER DEFAULT 0,
          answer_number INTEGER DEFAULT 0
        );
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
