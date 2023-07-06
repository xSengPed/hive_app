// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hive_app/screens/main_menu/main_menu.controller.dart';
import 'package:hive_app/screens/parcel_draft_list_page/parcel_draft_list_page.dart';
import 'package:hive_app/screens/parcel_draft_page/parcel_draft_page.dart';

import 'package:hive_app/widgets/tile_select.dart';
import 'package:provider/provider.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  late MainMenuController ctrl;
  @override
  void initState() {
    super.initState();
    ctrl = MainMenuController(context);
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ctrl,
      child: Consumer<MainMenuController>(builder: (context, con, child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.indigo[900],
            elevation: 0,
            title: Text('Main Menu'),
          ),
          body: Column(
            children: [
              Flexible(
                child: ListView(
                  children: [
                    TileSelect(
                      text: "Create Draft",
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ParcelDraftPage();
                          },
                        ));
                      },
                    ),
                    TileSelect(
                      text: "View Draft",
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ParcelDraftListPage();
                          },
                        ));
                      },
                    ),
                    // TileSelect(
                    //   text: "Delete All Draft",
                    //   onTap: () async {
                    //     HiveService.deleteAll();
                    //     // Navigator.push(context, MaterialPageRoute(
                    //     //   builder: (context) {
                    //     //     return ParcelDraftListPage();
                    //     //   },
                    //     // ));
                    //   },
                    // )
                  ],
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
