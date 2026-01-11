import 'package:flutter/material.dart';
import 'package:to_do_list/components/my_button.dart';

class DialogBox extends StatelessWidget {
  final TextEditingController taskInput;
  final VoidCallback onSaved;
  final VoidCallback onCancel;

  const DialogBox({
    super.key,
    required this.taskInput,
    required this.onSaved,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SizedBox(
        height: 140,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: taskInput,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Input new task',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(text: 'Save', onPressed: onSaved),
                const SizedBox(width: 8),
                MyButton(text: 'Cancel', onPressed: onCancel),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
