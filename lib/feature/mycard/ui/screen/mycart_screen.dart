import 'package:flutter/material.dart';
import 'package:pays/core/theming/styles.dart';
import 'package:pays/core/widget/custom_appbare.dart';
import 'package:pays/feature/mycard/ui/widget/payment_methods_bottom_sheet.dart';
import 'package:pays/feature/mycard/ui/widget/total_values.dart';
import 'package:pays/feature/mycard/ui/widget/order_summary.dart';
import 'package:pays/core/widget/text_button_app.dart';

class MycartScreen extends StatelessWidget {
  const MycartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBare(title: 'My Cart'),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: Image.asset(
                  "assets/images/prodact_car.png",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              OrderSummary(
                text: "Order Subtotal",
                value: "\$42.97",
              ),
              OrderSummary(
                text: "Discount",
                value: "\$0",
              ),
              OrderSummary(
                text: "Shipping",
                value: "\$0",
              ),
              SizedBox(
                width: 300,
                child: Divider(),
              ),
              TotalValues(
                text: "Total",
                value: "\$50.97",
                textStyle: TextStyles.font22Blackmedium,
                valueStyle: TextStyles.font22Blackmedium,
              ),
              TextButtonApp(
                text: 'Complet Payment',
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return PaymentMethodsBottomSheet();
                      });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
