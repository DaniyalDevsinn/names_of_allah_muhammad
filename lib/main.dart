import 'package:flutter/material.dart';
import 'package:names_of_allah_muhammad/view/main_page_names_of_muh.dart';
// import 'package:names_of_allah_muhammad/view/main_page.dart';
// import 'package:names_of_allah_muhammad/view/main_page.dart';
// import 'package:names_of_allah_muhammad/view/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Iqra',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: MainPageNamesOfMuh(),
      ),
    );
  }
}
