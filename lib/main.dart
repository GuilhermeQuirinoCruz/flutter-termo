import 'package:flutter/material.dart';
import 'package:termo/app/views/termo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Termo();
  }
}