import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:infinity_won/router.dart' as rt;
import 'package:infinity_won/view_model/answer_test_view_model.dart';

class AnswerTest extends ConsumerStatefulWidget {
  const AnswerTest({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AnswerTestState();
}

class _AnswerTestState extends ConsumerState<AnswerTest> {
  AnswerTestViewModel get _vm => ref.watch(answerTestProvider);
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("解答")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              // controller: _vm.testNameController,
              maxLength: 50,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "テスト名",
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
