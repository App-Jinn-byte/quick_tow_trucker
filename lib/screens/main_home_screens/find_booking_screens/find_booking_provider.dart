import 'package:flutter/material.dart';

class FindBookingProvider extends ChangeNotifier {
  BuildContext? context;

  init({@required BuildContext? context}) {
    this.context = context;
  }
}
