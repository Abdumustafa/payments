import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:pays/core/widget/custom_appbare.dart';
import 'package:pays/core/widget/text_button_app.dart';
import 'package:pays/feature/payment_details/ui/widget/outline_button_payment.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBare(title: 'My Cart'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
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
          TextButtonApp(
            text: 'pay',
            onPressed: () {
              context.push("/thankyouscreen");
            },
          ),
        ],
      ),
    );
  }
}
