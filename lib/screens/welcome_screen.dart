import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/index.dart';
import 'index.dart';

class WelcomeScreen extends StatefulWidget {
  static String routeName = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with TickerProviderStateMixin {
  AnimationController controller;
  Animation elasticAnimation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: Duration(seconds: 2), vsync: this);

    elasticAnimation =
        CurvedAnimation(parent: controller, curve: Curves.elasticOut);

    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    // controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // colorAnimation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Container(
                child: Image.asset('assets/images/logo.png'),
                height: elasticAnimation.value * 200,
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(
                title: 'Login',
                color: kButtonColor,
                onPressed: () {
                  Navigator.pushNamed(context, LoginScreen.routeName);
                }),
            RoundedButton(
                title: 'Sign Up',
                color: kButtonColor,
                onPressed: () {
                  Navigator.pushNamed(context, RegistrationScreen.routeName);
                }),
          ],
        ),
      ),
    );
  }
}
