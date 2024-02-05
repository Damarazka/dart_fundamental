import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/ind');
                  }, child: Text("Increment & Decrement")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/press');
                  }, child: Text("Press Button"))
            ],
          ),
        );
  }
}
