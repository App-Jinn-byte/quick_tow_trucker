import 'package:flutter/material.dart';

class HistoryProvider extends ChangeNotifier {
  BuildContext? context;

  Future<void> init({@required BuildContext? context}) async {
    this.context = context;
  }
}
