import 'package:earning_app/sliderfetch.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'customnavigationbar.dart';
import 'dialog test.dart';
import 'fetch.dart';
import 'navigationBar.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'CashMarket-BoldRounded',
        primarySwatch: Colors.blue,
      ),
      home:  CustomBottomNavigationBar(),
    );
  }
}
