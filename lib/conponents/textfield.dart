import 'package:flutter/material.dart';

import '../ui/colors/app_colors.dart';

Widget textFild({
  required String hintTxt,
  required TextEditingController controller,
  bool isObs = false,
  TextInputType? keyBordType,
  TextInputAction? textInputAction,
  FocusNode? focusNode,
  String? errorText,
  required bool enabled,
}) {
  return Container(
    height: 75.0,
    width: 320,
    decoration: BoxDecoration(
      color: AppColors.mainGray,
      boxShadow: const [
        BoxShadow(
            color: Colors.black,
            offset: Offset(2.0, 2.0),
            blurRadius: 10.0,
            spreadRadius: 1.0)
      ],
      borderRadius: BorderRadius.circular(65.0),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 50,
          margin: EdgeInsets.all(20),
          width: 250.0,
          child: TextField(
            showCursor: true,
            focusNode: focusNode,
            textInputAction: textInputAction,
            autocorrect: false,
            controller: controller,
            textAlignVertical: TextAlignVertical.center,
            obscureText: isObs,
            keyboardType: keyBordType,
            decoration: InputDecoration(
                enabled: enabled,
                errorText: errorText,
                border: InputBorder.none,
                hintText: hintTxt,
                hintStyle: TextStyle(fontSize: 15)),
          ),
        ),
        /* SvgPicture.asset(
          'assets/icon/$image',
          height: 20.0,
          color: grayText,
        ) */
      ],
    ),
  );
}
