import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pays/core/widget/text_button_app.dart';
import 'package:pays/feature/payment_details/ui/widget/outline_button_payment.dart';

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OutlineButtonPayment(
                svgImage: "assets/images/card.svg",
              ),
              OutlineButtonPayment(
                svgImage: 'assets/images/paypal.svg',
              ),
              OutlineButtonPayment(
                svgImage: "assets/images/apple_icon.svg",
              ),
            ],
          ),
        ),
        TextButtonApp(
          text: 'Complet Payment',
          onPressed: () {
            context.push("/thankyouscreen");
          },
        )
      ],
    );
  }
}
