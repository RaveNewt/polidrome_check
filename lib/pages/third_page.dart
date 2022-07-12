import 'package:flutter/material.dart';
import 'package:mobile_api/shared/theme.dart';
import 'package:mobile_api/widgets/StatusBar.dart';

class Third_Page extends StatefulWidget {
  Third_Page({Key? key}) : super(key: key);

  @override
  State<Third_Page> createState() => _Third_PageState();
}

class _Third_PageState extends State<Third_Page> {
  @override
  Widget build(BuildContext context) {
    Widget Header() {
      return Container(
        margin: EdgeInsets.only(top: 23),
        padding: EdgeInsets.only(right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
              icon: Image.asset(
                'assets/Stroke_1.png',
                width: 18,
                height: 18,
              ),
            ),
            SizedBox(width: 84),
            Center(
              child: Text(
                'Third Screen',
                style: textBlack.copyWith(
                  fontSize: 18,
                  fontWeight: semiBold,
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: 12,
          ),
          children: [
            StatusBar(),
            Header(),
            SizedBox(height: 222),
            Center(
              heightFactor: 1,
              child: Text(
                'Selected User Name',
                style: textBlack.copyWith(
                  fontSize: 24,
                  fontWeight: semiBold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
