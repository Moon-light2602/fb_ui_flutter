import 'package:fb_ui_flutter/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.white);
    return const MaterialApp(
      title: 'Facebook UI',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
