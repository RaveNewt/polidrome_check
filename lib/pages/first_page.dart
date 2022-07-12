import 'package:flutter/material.dart';
import 'package:mobile_api/pages/second_page.dart';
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
  final _check = TextEditingController();
  String message = '';
  String value = 'First Screen';
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
        return Container(
            width: 310,
            margin: EdgeInsets.only(bottom: 22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  onChanged: (text) {
                    value = text;
                  },
                  cursorColor: greyColor.withOpacity(0.3),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelStyle: textBlack.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: 'Name',
                    hintStyle: textGrey.copyWith(
                      fontSize: 16,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: blackColor,
                      ),
                    ),
                  ),
                ),
              ],
            ));
      }

      Widget checkInput() {
        return Container(
            width: 310,
            margin: EdgeInsets.only(bottom: 22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  controller: _check,
                  cursorColor: greyColor.withOpacity(0.3),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelStyle: textBlack.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: 'Polindrome',
                    hintStyle: textGrey.copyWith(
                      fontSize: 16,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: blackColor,
                      ),
                    ),
                  ),
                ),
              ],
            ));
      }

      Widget Welcome() {
        return Container(
          margin: EdgeInsets.only(top: 13),
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Text(
            'Message is: ' + message,
            style: textBlack.copyWith(
              fontSize: 12,
              fontWeight: semiBold,
            ),
          ),
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
              FunctionMessage();
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
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Second_page(value: value)));
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
            checkInput(),
            Welcome(),
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

  void FunctionMessage() {
    String original = _check.text.replaceAll(' ', '');
    String reverse = original.replaceAll(' ', '').split('').reversed.join('');
    print(original);

    String status = '';
    if (original == reverse) {
      status = 'Its A Palindrome';
      print('true');
    }
    if (original != reverse) {
      status = 'Its A Not Palindrome';
      print(reverse);
      print('false');
    }
    setState((() => message = status));
  }
}
