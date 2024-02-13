import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinity_won/data/test_info.dart';
import 'package:infinity_won/enum/test_type.dart';
import 'package:infinity_won/model/test_info_model.dart';

final answerTestProvider = ChangeNotifierProvider.autoDispose(
    ((ref) => AnswerTestViewModel()));

class AnswerTestViewModel extends ChangeNotifier {
  List<TestInfo> allTestInfo = [];
  // テスト名
  TextEditingController testNameController = TextEditingController();
  int testType = TestType.fourBase.value;
  // テストの問題数
  TextEditingController questionCountController = TextEditingController();

  /// 家計簿の登録
  Future registNewTest() async {
    if (testNameController.text.isEmpty) {
      // テスト名が未入力
      return;
    }
    if (questionCountController.text.isEmpty ||
      int.parse(questionCountController.text) <= 0) {
      // タグが未入力
      return;
    }

    try {
      await TestInfoModel.createItem(
        testNameController.text,
        testType,
        int.parse(questionCountController.text),
      );
    } catch (e) {
    }
    notifyListeners();
    return;
  }


  /// 家計簿の登録
  Future getAllTest() async {
    try {
      allTestInfo = await TestInfoModel.getAllTestInfo();
    } catch (e) {
    }
    notifyListeners();
  }
}
