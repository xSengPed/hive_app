import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:hive_app/models/draft_parcel.dart';
import 'package:hive_app/screens/parcel_draft_list_page/parcel_draft_list_page.controller.dart';
import 'package:hive_app/services/hive.service.dart';

class DraftParcelWidget extends StatelessWidget {
  final DraftParcel draftParcel;
  // final String boxId;

  final ParcelDraftListPageController ctrl;

  const DraftParcelWidget({
    super.key,
    required this.draftParcel,
    required this.ctrl,
    // required this.boxId,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  const Text(
                    "Sender",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  const Spacer(),
                  ElevatedButton(
                      onPressed: () async {
                        EasyLoading.show(status: 'Sending');
                        // Pint Slip
                        log("Print Slip");
                        await Future.delayed(
                            const Duration(milliseconds: 1500));
                        EasyLoading.dismiss();
                        log("Submit Slip");
                        EasyLoading.show(status: 'Submit Order');
                        await Future.delayed(
                            const Duration(milliseconds: 1500));
                        await HiveService.deleteOne(draftParcel);
                        ctrl.initialize();
                        EasyLoading.dismiss();
                      },
                      child: const Text('Submit'))
                ],
              ),
              Text(
                draftParcel.senderName,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Text('${draftParcel.senderAddress?.no}'),
              Text('${draftParcel.senderAddress?.desc}'),
              Text('${draftParcel.senderAddress?.subDistrict}'),
              Text('${draftParcel.senderAddress?.district}'),
              Text('${draftParcel.senderAddress?.province}'),
              Text('${draftParcel.senderAddress?.postalCode}'),
              SizedBox(
                height: 30,
              ),
              const Text("Receiver",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
              Text(
                draftParcel.recieverName,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Text('${draftParcel.reciverAddress?.no}'),
              Text('${draftParcel.reciverAddress?.desc}'),
              Text('${draftParcel.reciverAddress?.subDistrict}'),
              Text('${draftParcel.reciverAddress?.district}'),
              Text('${draftParcel.reciverAddress?.province}'),
              Text('${draftParcel.reciverAddress?.postalCode}'),
            ]),
      ),
    );
  }
}
