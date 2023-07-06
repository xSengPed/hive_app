import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:hive_app/models/draft_parcel.dart';
import 'package:hive_app/services/hive.service.dart';

class ParcelDraftPageController extends ChangeNotifier {
  late BuildContext context;
  TextEditingController senderNameCtrl =
      TextEditingController(text: "Donnukrit Satirakul");
  TextEditingController senderHouseNoCtrl = TextEditingController(text: "59");
  TextEditingController senderDescCtrl = TextEditingController(text: "-");
  TextEditingController senderSubDistCtrl =
      TextEditingController(text: "Pakphanang");
  TextEditingController senderDistCtrl =
      TextEditingController(text: "Pakphanang");
  TextEditingController senderProvinceCtrl =
      TextEditingController(text: "Nakorn Sri Thammarat");
  TextEditingController senderZipCtrl = TextEditingController(text: "80140");

  TextEditingController receiverNameCtrl =
      TextEditingController(text: "Apiruck C.");
  TextEditingController receiverHouseNoCtrl =
      TextEditingController(text: "112/46");
  TextEditingController receiverDescCtrl = TextEditingController(text: "-");
  TextEditingController receiverSubDistCtrl = TextEditingController(text: "-");
  TextEditingController receiverDistCtrl =
      TextEditingController(text: "Renu Nakorn");
  TextEditingController receiverProvinceCtrl =
      TextEditingController(text: "Nakorn Phanom");
  TextEditingController receiverZipCtrl = TextEditingController(text: "80000");

  ParcelDraftPageController(this.context);

  Future<void> createDraft(BuildContext context) async {
    if (EasyLoading.isShow) {
      return;
    }
    try {
      final DraftParcel draftParcel = DraftParcel(
          senderName: senderNameCtrl.text,
          senderAddress: Address(
            no: senderHouseNoCtrl.text,
            desc: senderDescCtrl.text,
            subDistrict: senderSubDistCtrl.text,
            district: senderDistCtrl.text,
            province: senderProvinceCtrl.text,
            postalCode: senderZipCtrl.text,
          ),
          recieverName: receiverNameCtrl.text,
          reciverAddress: Address(
            no: receiverHouseNoCtrl.text,
            desc: receiverDescCtrl.text,
            subDistrict: receiverSubDistCtrl.text,
            district: receiverDistCtrl.text,
            province: receiverProvinceCtrl.text,
            postalCode: receiverZipCtrl.text,
          ));

      EasyLoading.show(status: "");
      HiveService.add(draftParcel).whenComplete(() {
        EasyLoading.dismiss();
        Navigator.pop(context);
      });
    } catch (_) {
      EasyLoading.dismiss();
    }
  }
}
