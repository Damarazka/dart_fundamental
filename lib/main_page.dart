import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:
              CrossAxisAlignment.center, // Center buttons horizontally
          children: <Widget>[
            // Margin between buttons using SizedBox
            SizedBox(height: 10), // Vertical margin
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ind');
              },
              child: const Text("Increment & Decrement"),
            ),
            SizedBox(height: 10), // Vertical margin
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/press');
              },
              child: const Text("Press Button"),
            ),
            SizedBox(height: 10), // Vertical margin
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/mwd',
                    arguments: "assalamualaikum");
              },
              child: const Text("Move With Data"),
            ),
            SizedBox(height: 10), // Vertical margin
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.pushNamed(context, '/rds');
                final message = result != null ? result : "Data Kosong";

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(message.toString())),
                );
              },
              child: const Text("Move With Data"),
            ),
          ],
        ),
      ),
    );
  }
}
