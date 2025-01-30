import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pays/core/routing/router.dart';

class PayApp extends StatelessWidget {
  const PayApp({super.key});

  @override
  Widget build(BuildContext context) {
     return  ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child:  MaterialApp.router(
          routerConfig: routerApp,
          title: "Pays",
          theme: ThemeData(
            primaryColor: Colors.green,
          ),
          debugShowCheckedModeBanner: false,
        ),
    );
     
     
     
     
     
   
  }
}
