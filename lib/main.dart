import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinity_won/view/answer_test.dart';
import 'package:infinity_won/view/create_test.dart';
import 'package:infinity_won/view/home.dart';
import 'router.dart' as rt;
import 'package:intl/date_symbol_data_local.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  initializeDateFormatting('ja')
      .then((_) => runApp(const ProviderScope(child: MyApp())));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: const Color(0xffffccf0),
      ),
      routes: {
        '/': (context) => const Home(),
        rt.Router.home: (context) => const Home(),
        rt.Router.createTest: (context) => const CreateTest(),
        rt.Router.answerTest: (context) => const AnswerTest(),
        rt.Router.checkTest: (context) => const Home(),
        rt.Router.confirmTest: (context) => const Home(),
        rt.Router.settings: (context) => const Home(),
      },
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
        ],
    );
  }
}
