// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_project/SecondPageAndMaterials/SecondPage.dart';
import 'package:flutter_whatsapp_project/ThirdPageAndMaterials/AssestImage.dart';
import 'package:flutter_whatsapp_project/ThirdPageAndMaterials/FloatingActionButtonP3.dart';

class ThirdPageState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ThirdPage();
  }
}

// ignore: must_be_immutable
class ThirdPage extends State<ThirdPageState> {
  TextEditingController controller = TextEditingController();
  // ignore: non_constant_identifier_names
  var check = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(secondPage.PersonName),
        backgroundColor: Colors.blueGrey,
      ),
      body: AssetsImageMaterial(),
      floatingActionButton: FloatingActionButtonMaterialsP3State(),
    );
  }
}
