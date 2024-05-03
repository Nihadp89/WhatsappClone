// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_project/FirstPageAndMaterials/FirstPage.dart';
import 'package:flutter_whatsapp_project/StateManageMent/ProviderStatemangement.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';

class AppBarMaterials extends StatelessWidget {
  static Color iconButtoncolor = Colors.white;

  const AppBarMaterials({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    stateProvider ManageproviderState = Provider.of<stateProvider>(context);

    return SliverAppBar(
        backgroundColor: Colors.blueGrey,
        flexibleSpace: FlexibleSpaceBar(
          background: ManageproviderState.Truefalse
              ? const Text('')
              : AnimatedContainer(
                  duration: const Duration(milliseconds: 900),
                  padding: const EdgeInsets.only(top: 25, right: 15, left: 15),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: IconButton(
                          onPressed: () {
                            ManageproviderState.Truecal();
                          },
                          icon: const Icon(Icons.arrow_back_ios_new)),
                      hintText: 'Type a message',
                      contentPadding: const EdgeInsets.all(12.0),
                      filled: true,
                      fillColor: const Color.fromARGB(207, 255, 255, 255),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  )),
        ),
        title: ManageproviderState.Truefalse
            ? const Text('WhatsApp')
            : const Text(''),
        actions: [
          ManageproviderState.Truefalse
              ? IconButton(
                  onPressed: () {
                    requestCameraPermission();
                  },
                  icon: Icon(
                    Icons.camera_enhance_rounded,
                    color: iconButtoncolor,
                  ))
              : const Text(''),
          const SizedBox(width: 10),
          
          ManageproviderState.Truefalse
              ? IconButton(
                  onPressed: () {
                    ManageproviderState.Falsecall();
                  },
                  icon: Icon(
                    Icons.search,
                    color: iconButtoncolor,
                  ))
              : const Text(''),
          const SizedBox(width: 10),
          ManageproviderState.Truefalse
              ? PopupMenuButton(
                  color: iconButtoncolor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  itemBuilder: (BuildContext context) {
                    return [
                      const PopupMenuItem(child: Text('New group')),
                      const PopupMenuItem(child: Text('New broadcast')),
                      const PopupMenuItem(child: Text('Liked devices')),
                      const PopupMenuItem(child: Text('Starrd messages')),
                      const PopupMenuItem(child: Text('Payments')),
                      const PopupMenuItem(child: Text('Settings'))
                    ];
                  })
              : const Text('')
    ],
        bottom: TabBar(
            labelPadding: const EdgeInsets.fromLTRB(10, 10, 30, 10),
            controller: FirstPage.Tabcontroller,
            onTap: (value) {},
            indicatorColor: const Color.fromARGB(255, 255, 255, 255),
            labelColor: const Color.fromARGB(255, 255, 255, 255),
            tabs: const [
              Tab(icon: Icon(Icons.groups)),
              Tab(text: 'Chats'),
              Tab(text: 'Updates'),
              Tab(text: 'Calls')
            ]));
  }

  static Future<void> requestCameraPermission() async {
    PermissionStatus status = await Permission.camera.request();
    if (status.isGranted) {
      openCamera();
    } else {
      // ignore: avoid_print
      print('Permission denied');
    }
  }

  static Future<void> openCamera() async {
    // ignore: non_constant_identifier_names

    var Picker = ImagePicker();
    try {
      await Picker.pickImage(source: ImageSource.camera);
    } catch (error) {
      // ignore: avoid_print
      print(error);
    }
  }
}
