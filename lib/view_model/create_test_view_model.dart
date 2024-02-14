import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinity_won/data/test_info.dart';
import 'package:infinity_won/enum/test_type.dart';
import 'package:infinity_won/model/test_info_model.dart';

final createTestProvider = ChangeNotifierProvider.autoDispose(
    ((ref) => CreateTestViewModel()));

class CreateTestViewModel extends ChangeNotifier {
  List<TestInfo> allTestInfo = [const TestInfo(0,'新規作成',0,0,0)];
  // テスト名
  TextEditingController testNameController = TextEditingController();
  int testType = TestType.fourBase.value;
  int pastValue = 0;
  // テストの問題数
  TextEditingController questionCountController = TextEditingController();

  /// 家計簿の登録
  Future registNewTest() async {
    if (testNameController.text.isEmpty) {
      // テスト名が未入力
      // ref.read(messageProvider.notifier).state = Message.E0001;
      return;
    }
    if (questionCountController.text.isEmpty ||
      int.parse(questionCountController.text) <= 0) {
      // タグが未入力
      // ref.read(messageProvider.notifier).state = Message.E0004;
      return;
    }

    try {
      await TestInfoModel.createItem(
        testNameController.text,
        testType,
        int.parse(questionCountController.text),
      );
      // ref.read(messageProvider.notifier).state = Message.S0001;
      // ref.read(isUpdatedProvider.notifier).state = true;
    } catch (e) {
      // ref.read(messageProvider.notifier).state = Message.E0002;
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
