import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: PizzaApp());
  }
}
class PizzaApp extends StatelessWidget {
  PizzaApp({super.key});


  final ValueNotifier<String> currentPage = ValueNotifier<String>('Home');


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ValueListenableBuilder(
          valueListenable: currentPage,
          builder: (context, value, child) {
            return Text('Pizza Palace - $value');
          },
        ),
        backgroundColor: Colors.red,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            // Fun header
            Container(
              height: 150,
              color: Colors.red,
              child: const Center(
                child: Text(
                  '🍕 Pizza Palace!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

