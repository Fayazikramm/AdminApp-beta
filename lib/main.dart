import 'package:admin_app/homePage/HomePage.dart';
import 'package:admin_app/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
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
                surface: Color.fromARGB(255, 228, 217, 217),
                onSurface: Color.fromARGB(255, 212, 208, 208)),
            textTheme: const TextTheme(
                displayMedium: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w500),
                titleMedium: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w400),
                labelLarge: TextStyle(
                  color: Colors.black,
                ),
                displayLarge: TextStyle(
                    color: Colors.black, fontFamily: 'Lato', fontSize: 30))),
        home: const SplashScreen(),
        routes: {
          "/loginScreen": (context) => const LoginPage(),
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
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Stack(
        children: [
          Image.asset('assets/Icon.png'),
          const Positioned(
            bottom: 60,
            right: 50,
            child: Text(
              "Admin Cr.",
              style: TextStyle(
                  fontFamily: 'Lato', color: Colors.white, fontSize: 40),
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0xff47a04a),
      nextScreen: const LoginPage(),
      splashIconSize: 250,
      duration: 4000,
      splashTransition: SplashTransition.rotationTransition,
    );
  }
}
