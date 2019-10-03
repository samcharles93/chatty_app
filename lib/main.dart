import 'package:flutter/material.dart';

import 'screens/index.dart';
import 'util/index.dart';

void main() => runApp(ChattyApp());

class ChattyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: customTheme,
      routes: {
        WelcomeScreen.routeName: (context) => WelcomeScreen(),
        ChatScreen.routeName: (context) => ChatScreen(),
        RegistrationScreen.routeName: (context) => RegistrationScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
      },
      initialRoute: WelcomeScreen.routeName,
    );
  }
}
