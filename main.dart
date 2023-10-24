// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:systemdataicecream/homemenu.dart';
import 'package:systemdataicecream/homepage.dart';
import 'package:systemdataicecream/input_icecream_page.dart';
import 'package:systemdataicecream/introduction_page.dart';
import 'package:systemdataicecream/loginsystem.dart';
import 'package:systemdataicecream/news.dart';
import 'package:systemdataicecream/pencarian.dart';
import 'package:systemdataicecream/start.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ice Cream Data',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: true,
      ),
      home: LoginSystem(),
      color: Colors.purple.shade100,
      routes: {
        '/login': (context) => LoginSystem(),
        '/start': (context) => Start(),
        '/home': (context) => HomePage2(),
        '/search': (context) => LatihanPencarian(),
        '/homesystem': (context) => SistemHome(),
        '/app': (context) => MyAppSystem(),
        '/access': (context) => InputDataAccess(),
      },
      initialRoute: '/',
    );
  }
}
