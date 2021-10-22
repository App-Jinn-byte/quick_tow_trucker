import 'package:flutter/material.dart';

class MainHomeProvider extends ChangeNotifier {
  BuildContext? context;

  init({@required BuildContext? context}) {
    this.context = context;
  }
}
