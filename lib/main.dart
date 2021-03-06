import 'package:flutter/material.dart';
import 'package:mobile_api/pages/first_page.dart';
import 'package:mobile_api/pages/second_page.dart';
import 'package:mobile_api/pages/third_page.dart';
import 'package:mobile_api/pages/third_pige.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => First_page(),
        '/second': (context) => Second_page(
              value: '',
            ),
        '/third': (context) => Third_Page(),
        '/third2': (context) => third(),
      },
    );
  }
}
