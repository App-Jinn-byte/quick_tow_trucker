
import 'package:flutter/material.dart';

class VehicleDetailProvider extends ChangeNotifier {
  BuildContext? context;

  Future<void> init({@required BuildContext? context}) async {
    this.context = context;
  }
}