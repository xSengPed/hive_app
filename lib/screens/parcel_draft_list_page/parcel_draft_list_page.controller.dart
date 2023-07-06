import 'package:flutter/material.dart';
import 'package:hive_app/models/draft_parcel.dart';
import 'package:hive_app/services/hive.service.dart';

class ParcelDraftListPageController extends ChangeNotifier {
  late BuildContext context;
  List<DraftParcel> draft = [];
  ParcelDraftListPageController(this.context);

  void initialize() async {
    draft = await HiveService.retriveAll();

    notifyListeners();
  }
}
