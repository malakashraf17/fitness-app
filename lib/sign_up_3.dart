import 'package:flutter/material.dart';

import 'home.dart';
class signUp3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SignUp3();
}

class SignUp3 extends State<signUp3> {
  final _AGControl = TextEditingController();
  final _WControl = TextEditingController();
  final _HControl = TextEditingController();

  final _key = GlobalKey<FormState>();

  @override
  void dispose() {
    _AGControl.dispose();
    _WControl.dispose();
    _HControl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F0F0),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 40,
            right: 20,
            left: 20,
          ),
          child: SingleChildScrollView(
            child: Form(
              key: _key,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "sign up ",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 15),

                  const Text(
                    "to have the full access to feedback and trainings",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),

                  const SizedBox(height: 30),

                  /// Age
                  TextFormField(
                    controller: _AGControl,
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Please enter your age";
                      }

                      int? age = int.tryParse(value);

                      if (age == null) {
                        return "Please enter a valid age";
                      }

                      if (age < 10 || age > 100) {
                        return "Age must be between 10 and 100";
                      }

                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: "Age",
                      hintText: "Enter your age",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: _WControl,
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return "Please enter your weight";
                            }

                            double? weight = double.tryParse(value);

                            if (weight == null) {
                              return "Please enter a valid weight";
                            }

                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: "Weight (kg)",
                            hintText: "Weight",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(width: 15),

                      Expanded(
                        child: TextFormField(
                          controller: _HControl,
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return "Please enter your height";
                            }

                            double? height = double.tryParse(value);

                            if (height == null) {
                              return "Please enter a valid height";
                            }

                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: "Height (cm)",
                            hintText: "Height",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),

                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      onPressed: () {
                        if (_key.currentState!.validate()) {
                          print("Age: ${_AGControl.text}");
                          print("Weight: ${_WControl.text}");
                          print("Height: ${_HControl.text}");
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => FirstScreenhom(),
                              )
                          );
                        }
                      },
                      child: const Text(
                        "Create",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}