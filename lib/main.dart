import 'package:angela_chat2/screens/chat_screen.dart';
import 'package:angela_chat2/screens/login_screen.dart';
import 'package:angela_chat2/screens/registration_screen.dart';
import 'package:angela_chat2/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeScreen(),
      routes: {
        ChatScreen.routeName: (context) => ChatScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
        RegistrationScreen.routeName: (context) => RegistrationScreen(),
        WelcomeScreen.routeName: (context) => WelcomeScreen(),
      },
    );
  }
}
