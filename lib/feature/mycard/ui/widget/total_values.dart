import 'package:flutter/widgets.dart';
import 'package:pays/core/theming/styles.dart';

class TotalValues extends StatelessWidget {
  const TotalValues({super.key, required this.text, required this.value});
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
            style: TextStyles.font22Blackmedium,
          ),
          Text(
            value,
            style: TextStyles.font22Blackmedium,
          ),
        ],
      ),
    );
  }
}
