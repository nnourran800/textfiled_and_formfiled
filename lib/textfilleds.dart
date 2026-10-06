import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Textfilleds extends StatefulWidget {
  const Textfilleds({super.key});

  @override
  State<Textfilleds> createState() => _TextfilledsState();
}

class _TextfilledsState extends State<Textfilleds> {
  @override
  final formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        foregroundColor: Colors.white,
        title: Center(child: Text("text filled & text form filed")),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            SizedBox(height: 40),
            TextField(
              style: TextStyle(
                color: Colors.white70,
                fontSize: 15,
                fontWeight: FontWeight.w200,
              ),
              decoration: InputDecoration(
                hintText: " Enter Your Name",
                hintStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w200,
                  color: Colors.white70,
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              style: TextStyle(
                color: Colors.white70,
                fontSize: 15,
                fontWeight: FontWeight.w200,
              ),
              decoration: InputDecoration(
                hintText: " Enter Your Email",
                hintStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w200,
                  color: Colors.white70,
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Email Is Required";
                }
                return null;
              },
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
              print(" form is valid");
                }else(  print("email  is required "));
               },
              child: Text(
                "submit",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
