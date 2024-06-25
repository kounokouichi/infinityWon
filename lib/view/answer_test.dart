import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:infinity_won/router.dart' as rt;
import 'package:infinity_won/view/component/answer_button_flut.dart';
import 'package:infinity_won/view_model/answer.dart';
import 'package:infinity_won/view_model/answer_test_view_model.dart';
import 'package:carousel_slider/carousel_slider.dart';

/// 解答画面
class AnswerTest extends ConsumerStatefulWidget {
  const AnswerTest({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AnswerTestState();
}

class _AnswerTestState extends ConsumerState<AnswerTest> {
  AnswerTestViewModel get _vm => ref.watch(answerTestProvider);

  final int answerCount = 4;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
  List<Answer> answer = ref.watch(answersProvider);
  answer.add(Answer(completed: false,description: "",id: '1'));
// answer.description;
    return Scaffold(
      appBar: AppBar(title: Text("解答")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            //TODO:高さを調整できない！けどデザイン考えてない！
            SizedBox(
              height: 300,
              child: CarouselSlider.builder(
                itemCount: 15,
                itemBuilder: (BuildContext context, int itemIndex, _) {
                  int answerNumber = itemIndex + 1;
                  return Card(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width - 20,
                      child: Column(
                        children: [
                          Text("第$answerNumber問"),
                          for (var i = 1; i < answerCount + 1; i++)
                            AnswerButtonFlut(i.toString()),
                          Text(answer[0].completed.toString()),
                        ],
                      ),
                    ),
                  );
                },
                options: CarouselOptions(height: 300),
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
