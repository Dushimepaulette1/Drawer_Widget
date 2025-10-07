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
            ListTile(
              leading: Icon(Icons.home, color: Colors.red),
              title: Text('Home'),
              onTap: () {
                currentPage.value = 'Home';
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: Icon(Icons.restaurant, color: Colors.red),
              title: Text('Menu'),
              onTap: () {
                currentPage.value = 'Menu';
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: Icon(Icons.shopping_cart, color: Colors.red),
              title: Text('Cart'),
              onTap: () {
                currentPage.value = 'Cart';
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: Icon(Icons.settings, color: Colors.red),
              title: Text('Settings'),
              onTap: () {
                currentPage.value = 'Settings';
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      body: Center(
        child: ValueListenableBuilder(
          valueListenable: currentPage,
          builder: (context, value, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (value == 'Home')
                  Text(
                    'Welcome to Pizza Palace! 🍕',
                    style: TextStyle(fontSize: 20),
                  ),
                if (value == 'Menu')
                  Text(
                    'Check out our delicious pizzas! 🍕',
                    style: TextStyle(fontSize: 20),
                  ),
                if (value == 'Cart')
                  Text(
                    'Your pizza is on the way! 🚗',
                    style: TextStyle(fontSize: 20),
                  ),
                if (value == 'Settings')
                  Text(
                    'Configure your app here! ⚙️',
                    style: TextStyle(fontSize: 20),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}
