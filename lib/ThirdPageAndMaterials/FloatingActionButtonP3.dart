import 'package:flutter/material.dart';

class FloatingActionButtonMaterialsP3State extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FloatingActionButtonMaterialsP3();
  }
}

class FloatingActionButtonMaterialsP3
    extends State<FloatingActionButtonMaterialsP3State> {
  TextEditingController controller = TextEditingController();
  // ignore: non_constant_identifier_names
   var ShowText = '';
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 35),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            prefixIcon: IconButton(
              onPressed: () {
                setState(() {
                  ShowText = controller.text;

                  controller.clear();
                });
              },
              icon: const Icon(Icons.arrow_back_ios_new),
            ),
            hintText: 'Type a message',
            contentPadding: const EdgeInsets.all(12.0),
            filled: true,
            fillColor: const Color.fromARGB(207, 255, 255, 255),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(color: Colors.grey),
            ),
          ),
          style: const TextStyle(color: Colors.black),
        ));
  }
}
