import 'package:flutter/material.dart';

class Third_Page extends StatefulWidget {
  Third_Page({Key? key}) : super(key: key);

  @override
  State<Third_Page> createState() => _Third_PageState();
}

class _Third_PageState extends State<Third_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Third page'),
      ),
    );
  }
}