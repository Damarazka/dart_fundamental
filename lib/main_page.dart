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
            // Margin between buttons using const SizedBox
            const SizedBox(height: 10), // Vertical margin
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ind');
              },
              child: const Text("Increment & Decrement"),
            ),
            const SizedBox(height: 10), // Vertical margin
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/press');
              },
              child: const Text("Press Button"),
            ),
            const SizedBox(height: 10), // Vertical margin
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/mwd',
                    arguments: "assalamualaikum");
              },
              child: const Text("Move With Data"),
            ),
            const SizedBox(height: 10), // Vertical margin
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.pushNamed(context, '/rds');
                final message = result != null ?  result : "Data Kosong";
                
                if (message is Map) {
                  final name = message['name'];
                  final address = message['address'];
                  final age = message['age'];
                  if (name == null || address == null || age == null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Data belum diisi lengkap")),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text(
                            "halo nama saya $name \nsaya orang $address \numur saya $age")),
                  );
                  }
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(message.toString())),
                  );
                }
              },
              child: const Text("Move With Data"),
            ),
            const SizedBox(height: 10), // Vertical margin
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/rp');
              },
              child: const Text("Refresh Page"),
            ),
            const SizedBox(height: 10), // Vertical margin
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/lp');
              },
              child: const Text("last page"),
            ),
          ],
        ),
      ),
    );
  }
}
