import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double width;
  final Function onPressed;
  const CustomButton(
      {Key? key,
      required this.title,
      this.width = double.infinity,
      required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )),
        onPressed: onPressed(),
        child: Text(
          title,
          style: textWhite.copyWith(
            fontSize: 20,
            fontWeight: medium,
          ),
        ),
      ),
    );
  }
}
