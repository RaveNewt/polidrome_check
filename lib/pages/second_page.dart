import 'package:flutter/material.dart';

class Second_page extends StatefulWidget {
  Second_page({Key? key}) : super(key: key);

  @override
  State<Second_page> createState() => _Second_pageState();
}

class _Second_pageState extends State<Second_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Second page'),
      ),
    );
  }
}