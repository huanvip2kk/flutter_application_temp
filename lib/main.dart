import 'package:flutter/material.dart';
import 'package:flutter_application_temp/presentations/home/ui/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      title: "Init app",
    );
  }
}
