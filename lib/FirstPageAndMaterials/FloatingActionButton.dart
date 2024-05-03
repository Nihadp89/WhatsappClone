// ignore: file_names
// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_project/SecondPageAndMaterials/SecondPage.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:contacts_service/contacts_service.dart';

class FloatingActionButtonMaterials extends StatelessWidget {
  static List contactList = [];
  const FloatingActionButtonMaterials({super.key});
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => secondPage()),
        );
      },
      backgroundColor: Colors.blueGrey,
      child: const Icon(Icons.chat),
    );
  }

  static Future<void> contactInformation() async {
    Iterable contactIterable = await ContactsService.getContacts();

    // ignore: unnecessary_null_comparison
    if (contactIterable != null) {
      contactList = contactIterable.toList();
    } else {
      print('permission denied');
    }
  }

  static Future<void> requestPermissionAndLoadContacts() async {
    PermissionStatus status = await Permission.contacts.request();

    if (status.isGranted) {
      await contactInformation();
      // ignore: duplicate_ignore
    } else {
      print('Permission denied');
    }
  }
}
