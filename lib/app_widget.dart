import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nlw_flutter/modules/barcode_scanner/barcode_scanner_page.dart';
import 'package:nlw_flutter/modules/home/home_page.dart';
import 'package:nlw_flutter/modules/insert_boleto/insert_boleto_page.dart';
import 'package:nlw_flutter/modules/splash/splash_page.dart';

import 'modules/login/login_page.dart';
import 'shared/themes/app_colors.dart';

class AppWidget extends StatelessWidget {
  AppWidget() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pay Flow',
      theme: ThemeData(
        primaryColor: AppColors.primary,
        primarySwatch: Colors.orange,
        appBarTheme: AppBarTheme(
          brightness: Brightness.dark,
        ),
      ),
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => SplashPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
        "/barcode": (context) => BarcodeScannerPage(),
        "/insert_boleto": (context) => InsertBoletoPage(),
      },
    );
  }
}
