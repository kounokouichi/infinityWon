import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:infinity_won/router.dart' as rt;
import 'package:infinity_won/view/component/answer_button_flut.dart';
import 'package:infinity_won/view_model/answer.dart';
import 'package:carousel_slider/carousel_slider.dart';

/// 解答画面
class AnswerTest extends ConsumerStatefulWidget {
  const AnswerTest({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AnswerTestState();
}

class _AnswerTestState extends ConsumerState<AnswerTest> {
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

  @override
  Widget build(BuildContext context) {
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
                itemCount: questionCount + 1,
                itemBuilder: (BuildContext context, int itemIndex, _) {
                  return Card(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width - 20,
                      // TODO:引数がリストにない時があって初生成時だけエラーが出ているかも
                      child: itemIndex != questionCount
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("第${itemIndex + 1}問"),
                                for (var i = 1; i < answerCount + 1; i++)
                                  AnswerButtonFlut(itemIndex, i, false),
                              ],
                            )
                          // TODO:ここだけ別のクラスにしてもいいと思う
                          : lastPage(),
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

  Widget lastPage() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () async {
            await ref
                .watch(answersProvider.notifier)
                .registerAnswer()
                .whenComplete(
                    () => Navigator.of(context).pushNamed(rt.Router.checkTest));
          },
          // TODO: 最終的には全部の答えを埋めたら答え合わせ画面に遷移できるボタンを常駐させたい
          child: Text("答え合わせ画面へ"),
        ),
        TextButton(
          onPressed: () async {
            await ref
                .watch(answersProvider.notifier)
                .registerAnswer()
                .whenComplete(
                    () => Navigator.of(context).pushNamed(rt.Router.home));
          },
          // TODO: 最終的には全部の答えを埋めたら答え合わせ画面に遷移できるボタンを常駐させたい
          child: Text("答え合わせせずホーム画面へ"),
        ),
      ],
    );
  }
}
