import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:infinity_won/router.dart' as rt;
import 'package:infinity_won/view/component/answer_button_flut.dart';
import 'package:infinity_won/view_model/answer.dart';
import 'package:carousel_slider/carousel_slider.dart';

/// 答え合わせ画面
class CheckTest extends ConsumerStatefulWidget {
  const CheckTest({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CheckTestState();
}

class _CheckTestState extends ConsumerState<CheckTest> {
  final int questionCount = 5;
  final int answerCount = 4;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // TODO:選択した問題番号を保持できるようにする
      ref.watch(answersProvider.notifier).create(1, 1, questionCount);
    });
  }

// 基本的にやることは解答画面と同じ
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("答え合わせ")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 300,
              child: CarouselSlider.builder(
                itemCount: questionCount + 1,
                itemBuilder: (BuildContext context, int itemIndex, _) {
                  return Card(
                    color: Colors.purple[100],
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width - 20,
                      // TODO:引数がリストにない時があって初生成時だけエラーが出ているかも
                      child: itemIndex != questionCount
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("第${itemIndex + 1}問"),
                                for (var i = 1; i < answerCount + 1; i++)
                                  // フラグを持たせてボタンのレイアウトを答え合わせにも対応させないと
                                  AnswerButtonFlut(itemIndex, i, true),
                              ],
                            )
                          : Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    // 答え合わせ画面へいく
                                    Navigator.of(context)
                                        .pushNamed(rt.Router.confirmTest);
                                  },
                                  child: Text("正誤確認画面"),
                                ),
                                TextButton(
                                  onPressed: () {
                                    // 答え合わせ画面へいく
                                    Navigator.of(context)
                                        .pushReplacementNamed(rt.Router.home);
                                  },
                                  child: Text("ホーム画面"),
                                ),
                              ],
                            ),
                    ),
                  );
                },
                options: CarouselOptions(
                  height: 300,
                  enableInfiniteScroll: false,
                ),
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
