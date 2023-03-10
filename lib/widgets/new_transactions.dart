import 'package:flutter/material.dart';

class NewTransactions extends StatelessWidget {
  final Function newTX;
  NewTransactions(this.newTX, {super.key});

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: const InputDecoration(labelText: "Title"),
              controller: titleController,
            ),
            TextField(
              decoration: const InputDecoration(labelText: "Amount"),
              controller: amountController,
            ),
            TextButton(
              onPressed: () {
                newTX(
                  titleController.text,
                  double.parse(amountController.text),
                );
              },
              child: const Text(
                "Add Transactions",
                style: TextStyle(color: Colors.purple),
              ),
            )
          ],
        ),
      ),
    );
  }
}
