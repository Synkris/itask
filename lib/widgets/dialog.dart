import 'package:itask/widgets/button.dart';
import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  final TextEditingController controller; // Added type annotation
  final VoidCallback onSave;
  final VoidCallback onCancel;

  DialogBox({
    Key? key, // Added type annotation
    required this.controller,
    required this.onCancel,
    required this.onSave,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Get user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a New Task",
              ),
            ),

            // Buttons: Save or Cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Save button
                Button(text: "Save", onPressed: onSave),
                const SizedBox(width: 8),

                // Cancel button
                Button(text: "Cancel", onPressed: onCancel),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
