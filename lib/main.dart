import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_project/FirstPageAndMaterials/FirstPage.dart';
import 'package:flutter_whatsapp_project/StateManageMent/ProviderStatemangement.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();

  runApp(const RunMyApp());
}

class RunMyApp extends StatelessWidget {
  const RunMyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => stateProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Provider Example',
        home: stateForFirstPage(),
      ),
    );
  }
}

// ignore: must_be_immutable, camel_case_types
class stateForFirstPage extends StatefulWidget {
  const stateForFirstPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return FirstPage();
  }
}
