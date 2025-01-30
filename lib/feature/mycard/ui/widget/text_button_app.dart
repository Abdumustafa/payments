import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pays/core/theming/styles.dart';

class TextButtonApp extends StatelessWidget {
  const TextButtonApp({super.key});

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
        onPressed: () {},
        child: Text(
          "Complet Payment",
          style: TextStyles.font18Blackmedium,
        ),
      ),
    );
  }
}
