import 'dart:developer' as dev;

import 'package:hive_app/models/draft_parcel.dart';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:uuid/uuid.dart';

class HiveService {
  static late Box box;
  static void adaptersRegister() async {
    Hive.registerAdapter(DraftParcelAdapter());
    Hive.registerAdapter(AddressAdapter());
    box = await Hive.openBox("drafted_parcel_box");
  }

  static Future<void> add(DraftParcel draftParcel) async {
    const Uuid uuid = Uuid();
    try {
      await box.put(uuid.v4(), draftParcel);
      dev.log('200 : ok');
    } catch (_) {
      rethrow;
    }
  }

  static Future<List<DraftParcel>> retriveAll() async {
    try {
      final List<DraftParcel> data = box.values.toList().cast<DraftParcel>();
      return data;
    } catch (e) {
      rethrow;
    }
  }

  static Future<bool> deleteOne(DraftParcel draft) async {
    try {
      await box.delete(draft.key);
      return true;
    } catch (e) {
      dev.log(e.toString());
      return false;
    }
  }

  static void deleteAll() async {
    await box.clear();
  }

  static Future<void> editDraft(String id,
      {required DraftParcel updatedData}) async {
    try {
      await box.put(id, updatedData);
    } catch (e) {
      rethrow;
    }
  }
}
