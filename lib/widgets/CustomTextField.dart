import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  const CustomTextField({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 310,
        margin: EdgeInsets.only(bottom: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(

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
                hintText: hintText,
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
}
