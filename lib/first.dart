import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int myNumber = 0;

  void tambah() {
    setState(() {
      myNumber = myNumber + 1;
    });
  }

  void kurang() {
    setState(() {
      myNumber = myNumber - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text("Flutter Sammm!!!"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text("Kamu telah menekan tombol sebanyak "),
              Text(
                myNumber.toString(),
                style: const TextStyle(fontSize: 160.0),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ElevatedButton.icon(
                      onPressed: tambah,
                      label: const Text("tambah"),
                      icon: const Icon(Icons.add),
                    ),
                    ElevatedButton.icon(
                      onPressed: myNumber > 0 ? kurang : null,
                      label: const Text("kurang"),
                      icon: const Icon(Icons.remove),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
