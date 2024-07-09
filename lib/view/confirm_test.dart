import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:infinity_won/view_model/answer.dart';

/// 正誤確認画面
class ConfirmTest extends ConsumerStatefulWidget {
  const ConfirmTest({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ConfirmTestState();
}

class _ConfirmTestState extends ConsumerState<ConfirmTest> {
  final int questionCount = 5;
  final int answerCount = 4;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // TODO: 他の2画面でもそうだが、この作り方で良いのか？
      // autoDisposeをうまく使って画面遷移するときは捨てずに行きたいね
      ref.watch(answersProvider.notifier).create(questionCount);
    });
  }

// 基本的にやることは解答画面と同じ
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("正誤確認")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // 横は「第何回、正解回数、正解率」、縦は「問題番号、合計正解回数」
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
