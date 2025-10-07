import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

lass MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: PizzaApp());
  }
}
