// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_project/FirstPageAndMaterials/AppBar.dart';
import 'package:flutter_whatsapp_project/FirstPageAndMaterials/FloatingActionButton.dart';
import 'package:flutter_whatsapp_project/ThirdPageAndMaterials/ThirdPage.dart';
import 'package:flutter_whatsapp_project/main.dart';

class FirstPage extends State<stateForFirstPage> with TickerProviderStateMixin {
  // ignore: prefer_typing_uninitialized_variables, non_constant_identifier_names
  static var Tabcontroller;
  @override
  void initState() {
    FloatingActionButtonMaterials.requestPermissionAndLoadContacts();

    super.initState();
    Tabcontroller = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(216, 255, 255, 255),
        body: CustomScrollView(slivers: [
          const AppBarMaterials(),
          SliverFillRemaining(
              child: TabBarView(
            controller: Tabcontroller,
            children: [
              const Center(child: Text('Tab 1 content')),
              ListView.builder(
                itemCount: FloatingActionButtonMaterials.contactList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const CircleAvatar(),
                    title: Text(FloatingActionButtonMaterials
                        .contactList[index].displayName),
                    onTap: () {
                      try {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ThirdPageState()),
                        );
                      } catch (e) {
                        // ignore: avoid_print
                        print(e);
                      }
                    },
                  );
                },
              ),
              const Center(child: Text('Tab 3 content')),
              const Center(child: Text('Tab 4 content'))
            ],
          ))
        ]),
        floatingActionButton: const FloatingActionButtonMaterials());
  }
}
