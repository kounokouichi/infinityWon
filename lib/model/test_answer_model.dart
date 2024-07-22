import 'package:infinity_won/view_model/answer.dart';
import 'package:sqflite/sqflite.dart';
import 'package:infinity_won/model/common_model.dart';

class TestAnswerModel {
  /// 解答や正解を登録する
  static Future<void> createItem(
    int testId,
    int testCount,
    int questionNumber,
    int answerNumber, {
    int status = 0,
    int answerTime = 0,
  }) async {
    final db = await CommonModel.db();

    final data = {
      'test_id': testId,
      'test_count': testCount,
      'question_number': questionNumber,
      'answer_number': answerNumber,
      'status': status,
      'answer_time': answerTime,
    };
    await db.insert(
      CommonModel.tableNameTestAnswer,
      data,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    print('tableNameTestAnswer createItem');
  }

  /// 解答や正解を一括登録する
  static Future<void> createAllItem(List<Answer> answers) async {
    final db = await CommonModel.db();

    for (var answer in answers) {
      final data = {
        'test_id': answer.testId,
        'test_count': answer.testCount,
        'question_number': answer.questionNumber,
        'answer_number': answer.answerNumber,
        'status': answer.status,
        'answer_time': answer.answerTime,
      };

      await db.insert(
        CommonModel.tableNameTestAnswer,
        data,
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
    print('tableNameTestAnswer createAllItem');
  }
}
