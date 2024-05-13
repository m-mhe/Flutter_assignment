import 'package:flutter/material.dart';
import 'package:assignment_three/inventory.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Inventory',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            backgroundColor: const Color(0xffF6F6F6),
            foregroundColor: Colors.grey[800]),
        scaffoldBackgroundColor: const Color(0xffF6F6F6),
      ),
      home: const InventoryScreen(),
    );
  }
}
