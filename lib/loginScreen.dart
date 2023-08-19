import 'package:admin_app/homePage/HomePage.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Center(
                    child: TextLiquidFill(
                      text: 'Login',
                      waveDuration: const Duration(seconds: 6),
                      waveColor: const Color(0xff47a04a),
                      boxBackgroundColor:
                          Theme.of(context).colorScheme.background,
                      textStyle: const TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Lato'),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
                child: TextField(
                    decoration: InputDecoration(
                  hintText: 'Email',
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  suffixIcon: Icon(
                    Icons.visibility_outlined,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xffafb1b4),
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  fillColor: const Color(
                    (0xffe4e7eb),
                  ),
                )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
                child: TextField(
                    decoration: InputDecoration(
                  hintText: 'Password',
                  prefixIcon: Icon(
                    Icons.lock_outline,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  suffixIcon: Icon(
                    Icons.visibility_off_outlined,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xffafb1b4),
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  fillColor: const Color(
                    (0xffe4e7eb),
                  ),
                )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 170),
                child: Container(
                  height: 50,
                  width: 300,
                  decoration: const BoxDecoration(
                      color: Color(0xff47a04a),
                      borderRadius:
                          BorderRadiusDirectional.all(Radius.circular(40))),
                  child: Center(
                      child: Text(
                    "Login",
                    style: Theme.of(context).textTheme.displayLarge,
                  )),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    " Don't have an Account? ",
                    style: TextStyle(fontSize: 18),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    },
                    child: const Text(
                      "SignUp",
                      style: TextStyle(
                        color: Color(0xff47a04a),
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
