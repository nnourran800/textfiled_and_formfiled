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
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[600],
        foregroundColor: Colors.white,
        title: Center(child: Text("text filled & text form filed")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                " Create Account",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              Text(
                "Name",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              TextField(
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w200,
                ),
                decoration: InputDecoration(
                  hintText: " Enter Your Name",
                  prefixIcon: Icon(Icons.person, color: Colors.black),
                  hintStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w200,
                    color: Colors.black,
                  ),

                  border: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),

                  enabledBorder: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(80),
                    borderSide: BorderSide(
                      color: Colors.brown.shade300,
                      width: 3,
                    ),
                  ),

                  focusedBorder: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(80),
                    borderSide: BorderSide(
                      color: Colors.pink.shade300,
                      width: 3,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w200,
                ),

                decoration: InputDecoration(
                  border: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),

                  enabledBorder: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(80),
                    borderSide: BorderSide(
                      color: Colors.brown.shade300,
                      width: 3,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(80),
                    borderSide: BorderSide(
                      color: Colors.pink.shade300,
                      width: 3,
                    ),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(80),
                    borderSide: BorderSide(color: Colors.red, width: 3),
                  ),
                  //   focusedErrorBorder: UnderlineInputBorder(
                  //    borderRadius: BorderRadius.circular(80),
                  //     borderSide: BorderSide(
                  //      color: Colors.red,
                  //       width: 3,
                  //   ),
                  // ),
                  hintText: " Enter Your Email",
                  hintStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w200,
                    color: Colors.black,
                  ),
                  prefixIcon: Icon(Icons.email),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email Is Required";
                  }
                  return null;
                },
              ),
              SizedBox(height: 30),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      print(" form is valid");
                    } else
                      (print("email  is required "));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                    shadowColor: Colors.black,
                    elevation: 10,
                    shape: RoundedSuperellipseBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: Text(
                    "Create Account",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
