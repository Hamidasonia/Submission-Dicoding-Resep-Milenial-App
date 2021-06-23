import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resep_milenial_app/common/constans.dart';
import 'package:resep_milenial_app/page/home_page.dart';
import 'package:resep_milenial_app/page/intro_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with AfterLayoutMixin<SplashPage> {
  GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  void afterFirstLayout(BuildContext context) => checkFirstSeen();

  @override
  void initState() {
    _scaffoldKey = new GlobalKey<ScaffoldState>();
    super.initState();
  }

  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);

    if (_seen) {
      Timer(Duration(seconds: 4), () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => HomePage()));
      });
    } else {
      await prefs.setBool('seen', true);
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => OnBoardingPage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      key: _scaffoldKey,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(kImgLogo, width: 100, height: 100),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("RESEP",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
              Text("MILENIAL", style: TextStyle(fontSize: 22)),
            ],
          )
        ],
      ),
    );
  }
}
