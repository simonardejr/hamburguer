import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hambuguer/ui/login.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingPage extends StatelessWidget {

  Widget buildImage(String path) => Center(
    child: Image.asset(path),
  );

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          titleWidget: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        'Lorem Ipsum',
                        style: TextStyle(
                            color: Color(0xFFf99552),
                            fontWeight: FontWeight.bold,
                            fontSize: 35
                        )
                    ),
                  ],
                ),
              ),
            ],
          ),
          bodyWidget: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        'Lorem ipsum dolor sit amet, consectuer adipiscing elit, sed diamnomummy nibh',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18
                        )
                    ),
                  ],
                ),
              ),
            ],
          ),
          image: Image.asset("assets/page_01.png", fit:BoxFit.fill, width: double.infinity,),
          decoration: const PageDecoration(
              fullScreen: true,
              bodyAlignment: Alignment.topCenter,
              bodyFlex: 25
          ),
        ),
        PageViewModel(
          titleWidget: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                        'Lorem Ipsum',
                        style: TextStyle(
                            color: Color(0xFFf99552),
                            fontWeight: FontWeight.bold,
                            fontSize: 35
                        )
                    ),
                  ],
                ),
              ),
            ],
          ),
          bodyWidget: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Lorem ipsum dolor sit amet, consectuer adipiscing elit, sed diamnomummy nibh',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),
            ],
          ),
          image: Image.asset("assets/page_02.png", fit:BoxFit.fill, width: double.infinity,),
          decoration: const PageDecoration(
              fullScreen: true,
              bodyAlignment: Alignment.topCenter,
              bodyFlex: 25
          ),
        ),
      ],
      next: Text('PRÓXIMO', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
      // showSkipButton: true,
      // skip: const Text("Pular"),
      dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          activeColor: Color(0xFFf99552),
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0)
          )
      ),
      done: Text('OK', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
      onDone: () {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (page) => Login())
        );
      },
    );
  }
}
