import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:it/pages/BedRoom.dart';
import 'package:it/pages/LivingRoom.dart';
import 'package:it/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LivingRoom(),
    );
  }
}
