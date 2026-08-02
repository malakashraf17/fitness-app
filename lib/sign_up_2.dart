import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/sign_up_3.dart';
class signUp2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SignUp2();
}

class SignUp2 extends State<signUp2> {
  final _fControl = TextEditingController();
  final _sControl = TextEditingController();

  String? Gender = "Male";

  final _key = GlobalKey<FormState>();

  @override
  void dispose() {
    _fControl.dispose();
    _sControl.dispose();
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
                    "sign up",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
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

                  TextFormField(
                    controller: _fControl,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Please enter your first name";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: "First Name",
                      hintText: "Enter your first name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  TextFormField(
                    controller: _sControl,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Please enter your second name";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: "Second Name",
                      hintText: "Enter your second name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),

                  const SizedBox(height: 25),

                  const Text(
                    "Gender",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Row(
                    children: [
                      Radio<String>(
                        value: "Male",
                        groupValue: Gender,
                        onChanged: (value) {
                          setState(() {
                            Gender = value;
                          });
                        },
                      ),
                      const Text("Male",style: TextStyle(fontSize: 17),),

                      const SizedBox(width: 30),

                      Radio<String>(
                        value: "Female",
                        groupValue: Gender,
                        onChanged: (value) {
                          setState(() {
                            Gender = value;
                          });
                        },
                      ),
                      const Text("Female",style: TextStyle(fontSize: 17),),
                    ],
                  ),

                  const SizedBox(height: 30),

                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      onPressed: () {
                        if (_key.currentState!.validate()) {
                          print("First Name: ${_fControl.text}");
                          print("Second Name: ${_sControl.text}");
                          print("Gender: $Gender");

                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => signUp3(),
                            ),
                          );
                        }
                      },
                      child: const Text(
                        "Next",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
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