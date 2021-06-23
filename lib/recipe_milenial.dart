import 'package:flutter/material.dart';
import 'package:resep_milenial_app/common/configs.dart';
import 'package:resep_milenial_app/common/constans.dart';
import 'package:resep_milenial_app/common/styles.dart';
import 'package:resep_milenial_app/page/splash_page.dart';

class ResepMilenial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: kSAppName,
      theme: tdMain(context),
      home: SplashPage(),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: kLDelegates,
      supportedLocales: kLSupports,
    );
  }
}
