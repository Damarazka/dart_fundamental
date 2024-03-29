import 'package:dart_fundamental/first.dart';
import 'package:dart_fundamental/last_page.dart';
import 'package:dart_fundamental/main_page.dart';
import 'package:dart_fundamental/press.dart';
import 'package:dart_fundamental/replace_page.dart';
import 'package:dart_fundamental/return_data.dart';
import 'package:dart_fundamental/third_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.amber,
          appBarTheme: const AppBarTheme(color: Colors.amber)),
      initialRoute: '/',
      routes: {
        '/': (context) => const MainPage(),
        '/ind': (context) => const FirstPage(),
        '/press': (context) => const PressPage(),
        '/mwd': (context) =>
            MoveWithData(ModalRoute.of(context)?.settings.arguments as String),
        '/rds': (context) => ReturnDataScreen(),
        '/rp': (context) => const ReplacePage(),
        '/lp': (context) => const LastPage(),
      },
    );
  }
}
