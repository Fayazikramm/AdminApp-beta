import 'package:admin_app/homePage/HomePage.dart';
import 'package:admin_app/login/signup/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            iconTheme: IconThemeData(color: Color(0xff47a04a), size: 22),
            primaryColor: Color(0xff47a04a),
            colorScheme: const ColorScheme(
                brightness: Brightness.light,
                primary: Color(0xff47a04a),
                onPrimary: Color(0xff47a04a),
                secondary: Colors.black,
                onSecondary: Colors.black,
                error: Colors.red,
                onError: Colors.red,
                background: Colors.white,
                onBackground: Colors.white,
                surface: Color.fromARGB(255, 236, 236, 236),
                onSurface: Color.fromARGB(255, 212, 208, 208)),
            textTheme: const TextTheme(
                displaySmall: TextStyle(
                    color: Colors.black12, fontFamily: 'Lato', fontSize: 15),
                displayMedium: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w500),
                titleMedium: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w400),
                labelMedium: TextStyle(
                    color: Colors.black, fontFamily: 'Lato', fontSize: 20),
                labelLarge: TextStyle(
                  color: Colors.black,
                ),
                displayLarge: TextStyle(
                    color: Colors.black, fontFamily: 'Lato', fontSize: 30))),
        home: const SplashScreen(),
        routes: {
          "/loginScreen": (context) => LoginPage(),
          "/HomePage": (context) => const HomePage()
        });
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Stack(
        children: [
          Image.asset('assets/Icon2.png'),
          Positioned(bottom: 80, right: 50, child: _typer()),
        ],
      ),
      backgroundColor: Colors.white,
      nextScreen: LoginPage(),
      splashIconSize: 250,
      duration: 5000,
      splashTransition: SplashTransition.rotationTransition,
      pageTransitionType: PageTransitionType.fade,
    );
  }
}

Widget _typer() {
  return SizedBox(
    width: 150.0,
    child: DefaultTextStyle(
      style: const TextStyle(
        fontSize: 30.0,
        fontFamily: 'popin',
      ),
      child: AnimatedTextKit(isRepeatingAnimation: true, animatedTexts: [
        TyperAnimatedText('Admin Cr',
            textStyle: TextStyle(
                fontFamily: 'Lato', color: Color(0xff47a04a), fontSize: 35),
            speed: Duration(milliseconds: 100)),
      ]),
    ),
  );
}
