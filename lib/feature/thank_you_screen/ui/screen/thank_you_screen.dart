import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:pays/core/theming/styles.dart';
import 'package:pays/feature/mycard/ui/widget/total_values.dart';

class ThankYouScreen extends StatelessWidget {
  const ThankYouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:
            const EdgeInsets.only(bottom: 30, right: 30, left: 30, top: 150),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              decoration: ShapeDecoration(
                color: Color.fromARGB(255, 231, 225, 225),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Positioned(
              top: -40,
              right: 0,
              left: 0,
              child: CircleAvatar(
                backgroundColor: Color(0xffD9D9D9),
                radius: 50,
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.green,
                  child: Icon(
                    Icons.done_sharp,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Column(
                  children: [
                    Text(
                      "Thank you !",
                      style: TextStyles.font24BlackBold,
                    ),
                    Text(
                      "Your transaction was successful",
                      style: TextStyles.font18BlackextraLight,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TotalValues(
                      text: "Data",
                      value: '01/24/2023',
                      textStyle: TextStyles.font18BlackextraLight,
                      valueStyle: TextStyles.font18Blackmedium,
                    ),
                    TotalValues(
                      text: "Time",
                      value: '10:15 Am',
                      textStyle: TextStyles.font18BlackextraLight,
                      valueStyle: TextStyles.font18Blackmedium,
                    ),
                    TotalValues(
                      text: "To",
                      value: 'Sam Louse',
                      textStyle: TextStyles.font18BlackextraLight,
                      valueStyle: TextStyles.font18Blackmedium,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: 300,
                      child: Divider(),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TotalValues(
                      text: "Total",
                      value: "\$50.97",
                      textStyle: TextStyles.font22Blackmedium,
                      valueStyle: TextStyles.font22Blackmedium,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 20,
              right: 20,
              bottom: MediaQuery.sizeOf(context).height * .3 - 30,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                height: 60,
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image(image: Svg("assets/images/paypal.svg")),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Credit cart"),
                          Text("Mastercart **78"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              left: -20,
              bottom: MediaQuery.sizeOf(context).height * .2,
              child: CircleAvatar(
                backgroundColor: Colors.white,
              ),
            ),
            Positioned(
              right: -20,
              bottom: MediaQuery.sizeOf(context).height * .2,
              child: CircleAvatar(
                backgroundColor: Colors.white,
              ),
            ),
            Positioned(
              top: MediaQuery.sizeOf(context).height * .3 + 20,
              bottom: 0,
              right: 0,
              left: 0,
              child: Row(
                children: List.generate(
                    150 ~/ 10,
                    (index) => Expanded(
                          child: Container(
                            color: index % 2 == 0
                                ? Colors.transparent
                                : Colors.grey,
                            height: 2,
                          ),
                        )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
