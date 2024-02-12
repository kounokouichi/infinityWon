import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_info.freezed.dart';

@freezed
class TestInfo with _$TestInfo {
  const factory TestInfo(
    int id,
    String name,
    int type,
    int questionCount,
    int testCount,
  ) = _TestInfo;

  static List<TestInfo> fromList(List<Map<String, dynamic>> data) {
    List<TestInfo> result = [];
    for (var item in data) {
      result.add(
        TestInfo(
          item['id'] ?? 0,
          item['name'] ?? '',
          item['type'] ?? 0,
          item['question_count'] ?? 0,
          item['test_count'] ?? 0,
        ),
      );
    }
    return result;
  }
}
