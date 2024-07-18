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
     
    });
  }

// 横は「第何回、正解回数、正解率」、縦は「問題番号、合計正解回数」
// 基本的にやることは解答画面と同じ
  @override
  Widget build(BuildContext context) {
    // TODO:一旦providerから取得しているが本当は全部の解答を取得したい
    final notifier =  ref.watch(answersProvider.notifier);
    return Scaffold(
      appBar: AppBar(title: const Text("正誤確認")),
      body: Container(
        color: Colors.amber,
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: const [
                  DataColumn(label: Text('問題番号')),
                  DataColumn(label: Text('第1回')),
                  DataColumn(label: Text('第2回')),
                  DataColumn(label: Text('第3回')),
                  DataColumn(label: Text('第4回')),
                  DataColumn(label: Text('第5回')),
                  DataColumn(label: Text('第6回')),
                  DataColumn(label: Text('正解回数')),
                  DataColumn(label: Text('正解率')),
                ],
                rows: const [
                  DataRow(
                    cells: [
                      DataCell(Text('1')),
                      DataCell(Text('2')),
                      DataCell(Text('2')),
                      DataCell(Text('2')),
                      DataCell(Text('2')),
                      DataCell(Text('2')),
                      DataCell(Text('2')),
                      DataCell(Text('6')),
                      DataCell(Text('100%')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('2')),
                      DataCell(Text('3')),
                      DataCell(Text('3')),
                      DataCell(Text('3')),
                      DataCell(Text('3')),
                      DataCell(Text('3')),
                      DataCell(Text('3')),
                      DataCell(Text('6')),
                      DataCell(Text('100%')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('合計正解回数')),
                      DataCell(Text('2')),
                      DataCell(Text('2')),
                      DataCell(Text('2')),
                      DataCell(Text('2')),
                      DataCell(Text('2')),
                      DataCell(Text('2')),
                      DataCell(Text('-')),
                      DataCell(Text('100%')),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
