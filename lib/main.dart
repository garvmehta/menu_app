import 'package:flutter/material.dart';
import 'package:menu_app/provider/categories_provider.dart';
import 'package:menu_app/provider/order_provider.dart';
import 'package:menu_app/screens/placeOrder/placeOrder.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => Categories()),
      ChangeNotifierProvider(create: (context) => Order()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MenuApp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PlaceOrder(),
    );
  }
}
