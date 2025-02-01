import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class OutlineButtonPayment extends StatelessWidget {
  const OutlineButtonPayment({super.key, required this.svgImage});
  final String svgImage;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
        backgroundColor: WidgetStateProperty.all(Colors.white),
        overlayColor: WidgetStateProperty.all(Colors.transparent),
        side: WidgetStateProperty.resolveWith<BorderSide>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.pressed)) {
              return BorderSide(color: Colors.green, width: 2);
            }
            return BorderSide(
              color: Colors.black,
            );
          },
        ),
      ),
      onPressed: () {},
      child: Image(
        height: 60,
        width: 50,
        image: Svg(svgImage),
      ),
    );
  }
}
