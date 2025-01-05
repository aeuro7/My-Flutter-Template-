import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurant App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      // home: const MyHomePage(title: 'Apple Store'),
      home: const MyHomePage(title: 'Euro App'),
    );
  }
}

DateTime now = DateTime.now();
String formattedDate = DateFormat('d MMMM yyyy').format(now);

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 224, 224, 224),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: ClipRect(
          child: BackdropFilter(
            filter:
                ImageFilter.blur(sigmaX: 10000.0, sigmaY: 10000.0), // เพิ่มเบลอ
            child: AppBar(
              elevation: 0, // ลบเงา
              backgroundColor: const Color.fromARGB(255, 48, 48, 48).withOpacity(0.3), // โปร่งใส
              surfaceTintColor: Colors.transparent, // ลบสีเงา
              title: Text(title),
              centerTitle: true,
            ),
          ),
        ),
      ),
    );
  }
}
