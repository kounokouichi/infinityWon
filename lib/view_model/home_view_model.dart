import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeProvider = ChangeNotifierProvider.autoDispose(
    ((ref) => HomeViewModel()));

class HomeViewModel extends ChangeNotifier {
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();


  TextEditingController moneyController = TextEditingController();
  FocusNode moneyFocusNode = FocusNode();

}
