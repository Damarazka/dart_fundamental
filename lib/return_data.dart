import 'package:flutter/material.dart';

class ReturnDataScreen extends StatelessWidget {
  final _dataName = TextEditingController();
  ReturnDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Return data screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: _dataName,
                decoration: const InputDecoration(
                  hintText: "nama mu pokok e",
                  labelText: "nama kamuh",
                ),
              ),
            ),
            SizedBox(height: 10), // Margin 10 pixels vertikal
            ElevatedButton(
              onPressed: () {
                if (_dataName.text.isEmpty) {
                  Navigator.pop(context, null);
                } else {
                  Navigator.pop(context, _dataName.text);
                }
              },
              child: const Text("simpan sammm"),
            ),
          ],
        ),
      ),
    );
  }
}
