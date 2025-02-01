import 'package:flutter/widgets.dart';
import 'package:pays/core/theming/styles.dart';

class TotalValues extends StatelessWidget {
  const TotalValues(
      {super.key,
      required this.text,
      required this.value,
      required this.textStyle,
      required this.valueStyle});
  final String text;
  final String value;
  final TextStyle textStyle;
  final TextStyle valueStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: textStyle
          ),
          Text(
            value,
            style: valueStyle
          ),
        ],
      ),
    );
  }
}
