import 'package:flutter/material.dart';

class ReplacePage extends StatelessWidget {
  const ReplacePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Replace Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/');
            }, child: Text('Replace'))
          ],
        ),
      ),
    );
  }
}