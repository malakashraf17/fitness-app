import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'change_pass.dart';
class Getcod extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>getcod();
}
class getcod extends State<Getcod>
{
  final _control = TextEditingController();
  final _key =GlobalKey<FormState>();
  void dispose()
  {
    _control.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      body: SafeArea (
        child: Padding(padding: EdgeInsets.only(top: 15,left: 25),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 40),
                  Text(
                    "Phone Number",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height:20 ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "enter the code ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "we sent an sms with a code in the number",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height:50),
              Form(
                key: _key,
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: TextFormField(
                      controller: _control,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(4),
                      ],
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "Please enter code";
                        }
                        final codeRegex =
                        RegExp(r'^\d{4}$');
                        if (!codeRegex.hasMatch(value.trim())) {
                          return "Code must be 4 digits";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Enter Code",
                        label: Text("Code"),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 2,
                          ),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:  BorderSide(
                            color: Colors.red,
                            width: 2,
                          ),
                        ),

                      ),

                    )
                ),
              ),
              SizedBox(height: 30),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: Size(360, 60),
                ),
                onPressed: () {
                  if (_key.currentState!.validate()) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => changeP(),
                      ),
                    );
                  }
                },
                child: Text(
                  "Get The Code",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
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