import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:infinity_won/data/test_info.dart';
import 'package:infinity_won/enum/test_type.dart';
import 'package:infinity_won/router.dart' as rt;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:infinity_won/view_model/create_test_view_model.dart';

class CreateTest extends ConsumerStatefulWidget {
  const CreateTest({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CreateTestState();
}

class _CreateTestState extends ConsumerState<CreateTest> {
  CreateTestViewModel get _vm => ref.watch(createTestProvider);

  List<DropdownMenuItem> _pastTest = [];

  final _testTypeItems = [
    DropdownMenuItem(value: TestType.fourBase.value, child: Text('4択問題')),
    DropdownMenuItem(value: TestType.twoBase.value, child: Text('2択問題')),
  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // TODO:消す
      _vm.testNameController.text = 'test';
      _vm.questionCountController.text = '30';
      _vm.getAllTest().then((_) {
        _vm.pastValue = 0;
        _pastTest = [DropdownMenuItem(value: 0, child: Text('新規作成'))];
        if (_vm.allTestInfo.isNotEmpty) {
          _vm.allTestInfo.forEach(
            (testInfo) {
              _pastTest.add(
                DropdownMenuItem(
                  value: testInfo.id,
                  child: Text(testInfo.name),
                ),
              );
            },
          );
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("テスト作成")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            DropdownButtonFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '過去問',
              ),
              value: _vm.pastValue,
              items: _pastTest,
              onChanged: (value) {
                _vm.pastValue = value!;
                setState(() {});
              },
            ),
            Expanded(
              child: Visibility(
                visible: _vm.pastValue == 0,
                child: Column(
                  children: [
                    const SizedBox(height: 8),
                    TextFormField(
                      controller: _vm.testNameController,
                      maxLength: 50,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "テスト名",
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      controller: _vm.questionCountController,
                      maxLength: 4,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "問題数",
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(height: 8),
                    DropdownButtonFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: '問題形式',
                      ),
                      value: _vm.testType,
                      items: _testTypeItems,
                      onChanged: (value) {
                        _vm.testType = value!;
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // 新規作成の時もどっちにしてもポップアップメッセージがいるね
          await _vm.registNewTest().then((value) {
            Navigator.of(context).pushNamed(rt.Router.answerTest);
          });
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
