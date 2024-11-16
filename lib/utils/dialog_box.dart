import 'package:flutter/material.dart';
import 'package:to_do_app/utils/buttons.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox(
      {super.key,
      this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color(0xffffffff),
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //Text Field
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff8AAAE5))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff8AAAE5))),
                hintText: 'Add a new task here',
                hintStyle: TextStyle(color: Colors.grey[800]),
              ),
              style: TextStyle(color: Colors.black),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //save button
                Buttons(text: "Save", onPressed: onSave),

                const SizedBox(
                  width: 8,
                ),
                //cancel button
                Buttons(text: "Cancel", onPressed: onCancel)
              ],
            )
          ],
        ),
      ),
    );
  }
}
