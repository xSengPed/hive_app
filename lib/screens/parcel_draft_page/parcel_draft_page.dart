import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:hive_app/screens/parcel_draft_page/parce_draft_page.controller.dart';
import 'package:provider/provider.dart';

class ParcelDraftPage extends StatefulWidget {
  const ParcelDraftPage({super.key});

  @override
  State<ParcelDraftPage> createState() => _ParcelDraftPageState();
}

class _ParcelDraftPageState extends State<ParcelDraftPage> {
  late ParcelDraftPageController ctrl;
  InputDecoration inputDecoration = const InputDecoration();
  @override
  void initState() {
    ctrl = ParcelDraftPageController(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ctrl,
      child: Consumer<ParcelDraftPageController>(
        builder: (context, con, child) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Create Parcel"),
              backgroundColor: Colors.indigo[900],
              elevation: 0,
            ),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Flexible(
                    child: ListView(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 16.0),
                          child: const Text(
                            "Sender",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                        ),
                        TextFormField(
                          controller: ctrl.senderNameCtrl,
                          decoration: inputDecoration.copyWith(
                              label: const Text("Name")),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 16.0),
                          child: Text(
                            "Address",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        TextFormField(
                          controller: ctrl.senderHouseNoCtrl,
                          decoration: inputDecoration.copyWith(
                              label: const Text("House No.")),
                        ),
                        TextFormField(
                          controller: ctrl.senderDescCtrl,
                          decoration: inputDecoration.copyWith(
                              label: const Text("Description")),
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: TextFormField(
                                controller: ctrl.senderSubDistCtrl,
                                decoration: inputDecoration.copyWith(
                                    label: const Text("Sub District")),
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Flexible(
                              child: TextFormField(
                                controller: ctrl.senderDistCtrl,
                                decoration: inputDecoration.copyWith(
                                    label: const Text("District")),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: TextFormField(
                                controller: ctrl.senderProvinceCtrl,
                                decoration: inputDecoration.copyWith(
                                    label: const Text("Province")),
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Flexible(
                              child: TextFormField(
                                decoration: inputDecoration.copyWith(
                                    label: const Text("Postal Code")),
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 16.0),
                          child: Text(
                            "Receiver",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                        ),
                        TextFormField(
                          controller: ctrl.receiverNameCtrl,
                          decoration: inputDecoration.copyWith(
                              label: const Text("Name")),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 16.0),
                          child: Text(
                            "Address",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        TextFormField(
                          controller: ctrl.receiverHouseNoCtrl,
                          decoration: inputDecoration.copyWith(
                              label: const Text("House No.")),
                        ),
                        TextFormField(
                          controller: ctrl.receiverDescCtrl,
                          decoration: inputDecoration.copyWith(
                              label: const Text("Description")),
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: TextFormField(
                                controller: ctrl.receiverSubDistCtrl,
                                decoration: inputDecoration.copyWith(
                                    label: const Text("Sub District")),
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Flexible(
                              child: TextFormField(
                                controller: ctrl.receiverDistCtrl,
                                decoration: inputDecoration.copyWith(
                                    label: const Text("District")),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: TextFormField(
                                controller: ctrl.receiverProvinceCtrl,
                                decoration: inputDecoration.copyWith(
                                    label: const Text("Province")),
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Flexible(
                              child: TextFormField(
                                controller: ctrl.receiverZipCtrl,
                                decoration: inputDecoration.copyWith(
                                    label: const Text("Postal Code")),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 45,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.indigo[900],
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30))),
                              child: const Text("Proceed"),
                              onPressed: () async {
                                ctrl.createDraft(context);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
