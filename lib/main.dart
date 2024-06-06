import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_practice/add_car_screen.dart';
import 'package:test_practice/car_list_screen.dart';
// import 'package:test_practice/home_screen.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const CarListScreen(),
      routes: {
        "/add-car": (context) => AddCarScreen()
      },
    );
  }
}
