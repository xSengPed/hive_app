import 'package:flutter/material.dart';
import 'package:hive_app/screens/parcel_draft_list_page/parcel_draft_list_page.controller.dart';
import 'package:hive_app/widgets/draft_parcel_widget.dart';
import 'package:provider/provider.dart';

class ParcelDraftListPage extends StatefulWidget {
  const ParcelDraftListPage({super.key});

  @override
  State<ParcelDraftListPage> createState() => _ParcelDraftListPageState();
}

class _ParcelDraftListPageState extends State<ParcelDraftListPage> {
  late ParcelDraftListPageController ctrl;
  @override
  void initState() {
    ctrl = ParcelDraftListPageController(context);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ctrl.initialize();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ctrl,
      child: Scaffold(
          backgroundColor: Colors.indigo[900],
          appBar: AppBar(
            backgroundColor: Colors.indigo[900],
            elevation: 0,
          ),
          body: Consumer<ParcelDraftListPageController>(
            builder: (context, con, child) {
              return Column(
                children: [
                  Flexible(
                      child: ListView.builder(
                    itemCount: con.draft.length,
                    itemBuilder: (context, index) {
                      return DraftParcelWidget(
                        draftParcel: con.draft[index],
                        ctrl: ctrl,
                      );
                    },
                  ))
                ],
              );
            },
          )),
    );
  }
}
