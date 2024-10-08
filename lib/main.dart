import 'dart:async';

import 'package:flutter/material.dart';
import 'package:speakout/screens/auth/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => LoginPage()));
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/splashlogo.png'), fit: BoxFit.fill)),
    ));
  }
}
