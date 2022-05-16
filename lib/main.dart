import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_sharedpreference/screen_first.dart';
import 'package:flutter_sharedpreference/screen_second.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: FirstScreen(),
    );
  }
}
