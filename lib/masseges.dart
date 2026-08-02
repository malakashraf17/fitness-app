import 'package:flutter/material.dart';

class Masseges extends StatefulWidget {
  const Masseges({super.key});

  @override
  State<Masseges> createState() => _MassegesState();
}

class _MassegesState extends State<Masseges> {
  final TextEditingController _control = TextEditingController();

  List<String> messages = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: messages.length,
            itemBuilder: (context, index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: Container(
                      margin: const EdgeInsets.only(right: 70,left: 10,),
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: Text(
                        messages[index],
                        style: TextStyle(fontSize: 20,color: Colors.white),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _control,
                  decoration: InputDecoration(
                    hintText: "Type a message...",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              CircleAvatar(
                child: IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    if (_control.text.trim().isNotEmpty) {
                      setState(() {
                        messages.add(_control.text);
                        _control.clear();
                      });
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}