import 'package:flutter/material.dart';
import 'package:hive_app/services/hive.service.dart';

class MainMenuController extends ChangeNotifier {
  BuildContext context;
  MainMenuController(this.context);

  void createDraftParcel() async {}

  void getAll() async {
    HiveService.retriveAll();
  }
}
