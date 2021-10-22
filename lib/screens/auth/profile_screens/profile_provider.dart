import 'package:flutter/material.dart';

class ProfileProvider extends ChangeNotifier {
  BuildContext? context;

  init({@required BuildContext? context}) {
    this.context = context;
  }
}
