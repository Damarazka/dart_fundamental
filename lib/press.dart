import 'package:flutter/material.dart';

class PressPage extends StatefulWidget {
  const PressPage({super.key});

  @override
  State<PressPage> createState() => _PressPageState();
}

class _PressPageState extends State<PressPage> {
  double buttonTop = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Press Page"),
      ),
      body: Column(
        children: <Widget>[
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            margin: EdgeInsets.only(top: buttonTop),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  if (buttonTop == 0.0) {
                    buttonTop = 150.0;
                  } else if (buttonTop == 150.0) {
                    buttonTop = 300.0;
                  } else {
                    buttonTop = 0.0;
                  }
                });
              },
              child: const Text("Press me samm"),
            ),
          ),
        ],
      ),
    );
  }
}
