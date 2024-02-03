import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

final _items = [
  DropdownMenuItem(
    value: 'moke',
    child: Text('toeic'),
  ),
  DropdownMenuItem(
    value: 'piyo',
    child: Text('toefl'),
  ),
  DropdownMenuItem(
    value: 'mallo',
    child: Text('英検'),
  ),
];

  @override
  Widget build(BuildContext context) {
    String _value = _items[0].value!;
    return Scaffold(
      appBar: AppBar(title: Text("テスト作成")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
        DropdownButtonFormField(
          decoration: InputDecoration(
              border: OutlineInputBorder(),
            labelText: '過去問',
          ),
            value: _value,
            items: _items,
            onChanged: (value) {
                  setState(() {
                _value = value!;
              });
            },
          ),
          SizedBox(height: 8),
          TextFormField(
            controller: _vm.testNameController,
            maxLength: 50,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "テスト名",
            ),
          ),
          SizedBox(height: 8),
          TextFormField(
            controller: _vm.questionCountController,
            maxLength: 4,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "問題数",
            ),
            keyboardType: TextInputType.number,
          ),
          SizedBox(height: 8),
        DropdownButtonFormField(
          decoration: InputDecoration(
              border: OutlineInputBorder(),
            labelText: '問題形式',
          ),
            value: _value,
            items: _items,
            onChanged: (value) {
                  setState(() {
                _value = value!;
              });
            },
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
