
import 'package:flutter/material.dart';
import 'package:hambuguer/ui/onboarding_page.dart';

class App extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.fallback(),
      home: OnboardingPage()
    );
  }
}