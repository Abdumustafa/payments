import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pays/core/theming/styles.dart';

class TextButtonApp extends StatelessWidget {
  const TextButtonApp({super.key, required this.text, required this.onPressed});

  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ElevatedButton(
        style: ButtonStyle(
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
          backgroundColor: WidgetStatePropertyAll(
            Colors.green,
          ),
          fixedSize: WidgetStateProperty.all(
            Size(double.maxFinite, 60.h),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyles.font18Blackmedium,
        ),
      ),
    );
  }
}
