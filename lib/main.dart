import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:the_world_of_books/Mainapppage/apppage.dart';
import 'package:the_world_of_books/Registrationservices/SignIn.dart';
import 'package:the_world_of_books/Registrationservices/register.dart';

import 'package:page_transition/page_transition.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
        title: 'Material App',routes: {
          "SignIn": (context) => SignIn(),
          "register": (context) => register(),
          "apppage": (context) => apppage(),

        },
        home:  AnimatedSplashScreen(
            duration: 700,splashIconSize: 1200,
            splash:  'images/pics/logo.jpg',
            nextScreen: SignIn(),

            splashTransition: SplashTransition.sizeTransition,
            pageTransitionType: PageTransitionType.leftToRight,
            backgroundColor: Colors.black
        )
    );
  }
}
