import 'package:flutter/widgets.dart';
import 'package:pays/core/theming/styles.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({super.key, required this.text, required this.value});
  final String text;
  final String value;

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
            style: TextStyles.font18BlackextraLight,
          ),
          Text(
            value,
            style: TextStyles.font18Blackmedium,
          ),
        ],
      ),
    );
  }
}
