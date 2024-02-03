import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final createTestProvider = ChangeNotifierProvider.autoDispose(
    ((ref) => CreateTestViewModel()));

class CreateTestViewModel extends ChangeNotifier {
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();


  TextEditingController testNameController = TextEditingController();
  TextEditingController questionCountController = TextEditingController();

}
