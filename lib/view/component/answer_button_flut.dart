import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AnswerButtonFlut extends ConsumerWidget {
  const AnswerButtonFlut(
    this.number, {
    super.key,
  });
  final String number;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
      width: 300,
      height: 52,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            side: BorderSide(
              color: Colors.blueAccent,
              width: 2,
            ),
          ),
        ),
        onPressed: () {},
        child: Text(number),
      ),
    );
  }
}
