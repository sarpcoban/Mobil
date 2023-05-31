import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Getx Uygulaması',
      theme: ThemeData(
          useMaterial3: true,
          primarySwatch: Colors.indigo),
      home: HomeScreen(),
    );
  }
}