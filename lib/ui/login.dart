import 'package:flutter/material.dart';
import 'package:hambuguer/ui/hamburguer.dart';
import 'package:hambuguer/ui/onboarding_page.dart';

class Login extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8E121A),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/avatar.png'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Text(
                  'SIMONARDE LIMA',
                  style: TextStyle(
                    color: Color(0xFFf99552),
                    fontSize: 20
                  ),
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Center(
                child: Text(
                  'EMAIL@EMAIL.COM',
                  style: TextStyle(
                    color: Color(0xFFf99552),
                    fontSize: 15
                  ),
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 55, right: 20, left: 20),
            child: Center(
              child: SizedBox(
                width: double.infinity,
                child: TextButton(
                  child: Text('ENTRAR'),
                  style: TextButton.styleFrom(
                    primary: Color(0xFF8E121A),
                    backgroundColor: Color(0xFFf99552),
                    onSurface: Colors.grey,
                    padding: EdgeInsets.only(top: 15, bottom: 15),
                    textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (page) => Hamburguer())
                    );
                  },
                ),
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 20, left: 20),
            child: Center(
                child: SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    child: Text('NÃO SOU ESTE USUÁRIO'),
                    style: TextButton.styleFrom(
                      primary: Color(0xFFf99552),
                      backgroundColor: Color(0xFF8E121A),
                      onSurface: Colors.grey,
                      padding: EdgeInsets.only(top: 15, bottom: 15),
                      side: BorderSide(color: Color(0xFFf99552), width: 1)
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (page) => OnboardingPage())
                      );
                    },
                  ),
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Center(
                child: Text(
                  'Lorem ipsum dolor sit amet, consectuer adipiscing elit, sed diamnomummy nibh. Lorem ipsum dolor sit amet, consectuer adipiscing elit, sed diamnomummy nibh',
                  style: TextStyle(
                      color: Color(0xFFf99552),
                      fontSize: 15
                  ),
                )
            ),
          ),
        ],
      ),
    );
  }
}
