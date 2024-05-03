// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_project/FirstPageAndMaterials/FloatingActionButton.dart';
import 'package:flutter_whatsapp_project/ThirdPageAndMaterials/ThirdPage.dart';

// ignore: camel_case_types

// ignore: camel_case_types
class secondPage extends StatelessWidget {
  // ignore: non_constant_identifier_names
  static var PersonName = '';

  const secondPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.blueGrey),
        body: ListView.builder(
          itemCount: FloatingActionButtonMaterials.contactList.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const CircleAvatar(),
              title: Text(
                  FloatingActionButtonMaterials.contactList[index].displayName),
              onTap: () {
                PersonName = FloatingActionButtonMaterials
                    .contactList[index].displayName;

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThirdPageState()),
                );
              },
            );
          },
        ));
  }
}
