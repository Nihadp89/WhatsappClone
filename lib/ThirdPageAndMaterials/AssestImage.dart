import 'package:chat_bubbles/bubbles/bubble_special_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_project/ThirdPageAndMaterials/FloatingActionButtonP3.dart';

class AssetsImageMaterial extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    FloatingActionButtonMaterialsP3 Obj=FloatingActionButtonMaterialsP3();
   return  Container(
        width: 500,
        height: 1500,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background_image.webp'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            BubbleSpecialTwo(text:Obj.ShowText)
          ],
        ),
      );
  }


  
}