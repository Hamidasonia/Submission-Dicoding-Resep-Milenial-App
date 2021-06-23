import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:resep_milenial_app/common/constans.dart';
import 'package:resep_milenial_app/page/home_page.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => HomePage()),
    );
  }


  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      globalHeader: Align(
        alignment: Alignment.topRight,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only( top: 16, right: 16),
            child:  Image.asset(kImgLogo, width: 50),
          ),
        ),
      ),
      globalFooter: SizedBox(
        width: double.infinity,
        height: 60,
        child: MaterialButton(
          color: Colors.yellow,
          child: const Text(
            'Ayo Cari Resepmu!',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          onPressed: () => _onIntroEnd(context),
        ),
      ),
      pages: [
        PageViewModel(
          title: "Resep Makanan Kekinian",
          body:
          "Makanan yang kekinian atau milenial, resepnya dapat kamu dapatkan di Aplikasi ini!",
          image: Image.asset(kImg1, width: 350),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Dapat Dicoba Semua Umur",
          body:
          "Beragam resep dari yang simple sampai sulit dapat dicoba mulai dari anak-anak, remaja, sampai dewasa",
          image:Image.asset(kImg2, width: 350),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Cita Rasa Kalangan Umur",
          body:
          "Cita rasa yang diciptakan dari resep aplikasi ini, cocok semua kalangan umur",
          image: Image.asset(kImg3, width: 350),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      //rtl: true, // Display as right-to-left
      skip: const Text('Skip', style: TextStyle(color: Colors.yellow),),
      next: const Icon(Icons.arrow_forward, color: Colors.yellow),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600, color: Colors.yellow)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.black87,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}