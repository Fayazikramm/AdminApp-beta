import 'package:admin_app/HomePage.dart';
import 'package:admin_app/loginScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
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
          primaryColor: Color(0xff47a04a),
        backgroundColor: Colors.white,
        
        textTheme: TextTheme(
          labelLarge: TextStyle(color: Colors.black)
        )
        
        
        ),
        
        
        home: SplashScreen(),
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
          
            
            Positioned(
              bottom: 60,right: 50,
              child: const Text(
                "Admin Cr.",
                style: TextStyle(
                    fontFamily: 'Lato', color: Colors.white, fontSize: 40),
              ),
            ),
          
        ],
      ),
      backgroundColor: Color(0xff47a04a),
      nextScreen: const LoginPage(),
      splashIconSize: 250,
      duration: 4000,
      splashTransition: SplashTransition.rotationTransition,
    );
  }
}
