import 'package:flutter/material.dart';
import 'package:todoapp/util/my_button.dart';
class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({super.key, required this.controller,required this.onSave,required this.onCancel,});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
     backgroundColor: Colors.blue[50],
     content: Container(
      height: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        TextField(
          controller: controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Add a new task",
          ),
        ),

        //buttons
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
          
          MyButton(text: "Save", onPressed: onSave),

          const SizedBox(width: 10,),
          MyButton(text: "cancel", onPressed: onCancel),
        ],)
      ]),
     ),
    );
  }
}