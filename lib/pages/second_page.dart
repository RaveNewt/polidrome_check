import 'package:flutter/material.dart';
import 'package:mobile_api/shared/theme.dart';
import 'package:mobile_api/widgets/StatusBar.dart';

class Second_page extends StatefulWidget {
  Second_page({Key? key}) : super(key: key);

  @override
  State<Second_page> createState() => _Second_pageState();
}

class _Second_pageState extends State<Second_page> {
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
                Navigator.pushNamed(context, '/');
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
                'Second Screen',
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

    Widget Welcome() {
      return Container(
        margin: EdgeInsets.only(top: 13),
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Text(
          'Welcome',
          style: textBlack.copyWith(
            fontSize: 12,
            fontWeight: regular,
          ),
        ),
      );
    }

    Widget nextButton() {
      return Container(
        margin: EdgeInsets.only(top: 315),
        width: 310,
        height: 48,
        child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )),
          onPressed: () {
            Navigator.pushNamed(context, '/third');
          },
          child: Text(
            'Choose a User',
            style: textWhite.copyWith(
              fontSize: 20,
              fontWeight: medium,
            ),
          ),
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
            Welcome(),
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
            nextButton(),
          ],
        ),
      ),
    );
  }
}
