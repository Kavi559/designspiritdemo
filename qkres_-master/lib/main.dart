import 'package:flutter/material.dart';
import 'package:qkres_app/screens/home_page.dart';
import 'package:qkres_app/screens/welcome_screen.dart';
import 'package:qkres_app/screens/login_screen.dart';
import 'package:qkres_app/screens/registration_screen.dart';
import './providers/tabPage-provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
          value: TabPageProvider(),
          child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: WelcomeScreen.id,
          routes: {
            WelcomeScreen.id: (context) => WelcomeScreen(),
            LoginScreen.id: (context) => LoginScreen(),
            RegistrationScreen.id: (context) => RegistrationScreen(),
            HomeScreen.id: (context) => HomeScreen(),
          }),
    );
  }
}
