import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/sign_up_2.dart';
import 'logIn.dart';
class signUp1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SignUp1();
}

class SignUp1 extends State<signUp1> {
  final _emailControl = TextEditingController();
  final _passControl = TextEditingController();
  final _rControl = TextEditingController();
  final _key = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailControl.dispose();
    _passControl.dispose();
    _rControl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F0F0),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
          child:  Column(
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

              Form(
                key: _key,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _emailControl,
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "Please enter your email";
                        }

                        final emailRegex = RegExp(
                          r'^[\w\-\.]+@([\w\-]+\.)+[\w\-]{2,4}$',
                        );

                        if (!emailRegex.hasMatch(value.trim())) {
                          return "Please enter a valid email";
                        }

                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "E-mail",
                        hintText: "Enter your email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.blue,
                            width: 2,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    TextFormField(
                      controller: _passControl,
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your password";
                        }

                        if (value.length < 8) {
                          return "Password must be at least 8 characters";
                        }

                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "Password",
                        hintText: "Enter your password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.blue,
                            width: 2,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    TextFormField(
                      obscureText: true,
                      controller: _rControl,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please repeat your password";
                        }

                        if (_passControl.text != _rControl.text) {
                          return "Password is not same";
                        }

                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "Repeat Password",
                        hintText: "Repeat your password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.blue,
                            width: 2,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.red,
                            width: 2,
                          ),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.red,
                            width: 2,
                          ),
                        ),
                      ),
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
                            Navigator.of(context).push(MaterialPageRoute <void>(builder: (context)=>signUp2(),),);
                          }
                        },
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 270),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("Have an account ? " , style: TextStyle(color: Colors.grey,fontSize: 20),textAlign:TextAlign.end,),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute <void>(builder: (context)=>Login(),),);
                          },
                          child: Padding(
                            padding: EdgeInsets.only(top: 30),
                            child: Text("log in " , style: TextStyle(color: Colors.black,fontSize: 20,decoration: TextDecoration.underline),),
                          ),)
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}