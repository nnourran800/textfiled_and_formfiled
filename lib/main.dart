import 'package:flutter/material.dart';
import 'package:textfiled_and_formfiled/textfilleds.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home:Textfilleds(),
    );
  }
}

