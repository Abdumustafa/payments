import 'package:flutter/material.dart';
import 'package:pays/core/theming/styles.dart';

AppBar buildAppBare({required String title}) {
  return AppBar(
    backgroundColor: Colors.white,
    title: Text(
      title,
      style: TextStyles.font22BlackMedium,
    ),
    centerTitle: true,
  );
}
