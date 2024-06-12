import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:infinity_won/router.dart' as rt;
import 'package:infinity_won/view_model/answer_test_view_model.dart';

/// 解答画面
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
            //TODO:高さを調整できない！けどデザイン考えてない！
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: SizedBox(
                      width: 200,
                      height: 50,
                      child: Center(child: Text("card")),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
