import 'package:collard_greens/ui/colors/app_colors.dart';
import 'package:flutter/material.dart';

Future showAlertDialog(
  BuildContext context, {
  required String title,
  required String content,
  String? cancelActionText,
  required String defaultActionText,
}) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          icon: const Icon(
            Icons.warning,
            color: AppColors.mainGreen,
          ),
          title: Text(
            title,
            style: TextStyle(
                color: AppColors.mainGreen, fontWeight: FontWeight.bold),
          ),
          content: Text(
            content,
            style: TextStyle(
                color: AppColors.mainGreen, fontWeight: FontWeight.normal),
          ),
          actions: [
            if (cancelActionText != null)
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: Text(cancelActionText),
              ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: Text(defaultActionText),
            ),
          ],
        );
      });
}
