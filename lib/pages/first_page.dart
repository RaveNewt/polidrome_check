import 'package:flutter/material.dart';
import 'package:mobile_api/shared/theme.dart';
import 'package:mobile_api/widgets/CustomButton.dart';
import 'package:mobile_api/widgets/CustomTextField.dart';
import 'package:mobile_api/widgets/StatusBar.dart';

class First_page extends StatefulWidget {
  First_page({Key? key}) : super(key: key);

  @override
  State<First_page> createState() => _First_pageState();
}

class _First_pageState extends State<First_page> {
  @override
  Widget build(BuildContext context) {
    Widget Background() {
      return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.png'),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    Widget Foto() {
      return Container(
        margin: EdgeInsets.only(top: 154),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/ic_photo.png',
              width: 116,
              height: 116,
            ),
          ],
        ),
      );
    }

    Widget inputSection() {
      Widget nameInput() {
        return CustomTextField(
          hintText: 'Name',
        );
      }

      Widget emailInput() {
        return CustomTextField(
          hintText: 'Palindrome',
        );
      }

      Widget checkButton() {
        return Container(
          margin: EdgeInsets.only(top: 45),
          width: 310,
          height: 48,
          child: TextButton(
            style: TextButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            },
            child: Text(
              'Check',
              style: textWhite.copyWith(
                fontSize: 20,
                fontWeight: medium,
              ),
            ),
          ),
        );
      }

      Widget nextButton() {
        return Container(
          margin: EdgeInsets.only(top: 15),
          width: 310,
          height: 48,
          child: TextButton(
            style: TextButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            },
            child: Text(
              'Next',
              style: textWhite.copyWith(
                fontSize: 20,
                fontWeight: medium,
              ),
            ),
          ),
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 50),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            checkButton(),
            nextButton(),
          ],
        ),
      );
    }

    return Stack(
      children: [
        Background(),
        StatusBar(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: ListView(
              padding: EdgeInsets.symmetric(
                horizontal: 24,
              ),
              children: [
                Foto(),
                inputSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
