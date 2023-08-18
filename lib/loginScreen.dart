import 'package:admin_app/HomePage.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(color: Colors.white),
                child: Center(
                  child: TextLiquidFill(
                    text: 'Admin Cr.',
                    waveDuration: Duration(seconds: 5),
                    waveColor: Color(0xff47a04a),
                    boxBackgroundColor: Colors.white,
                    textStyle: TextStyle(
                      fontSize: 30.0, // Adjust the font size as needed
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100, left: 10, right: 10),
                child: TextField(
                    decoration: InputDecoration(
                  hintText: 'Email',
                  prefixIcon: const Icon(Icons.email_outlined),
                  suffixIcon: const Icon(Icons.visibility_outlined),
                  focusedBorder: OutlineInputBorder(
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
                  prefixIcon: const Icon(Icons.lock_outline),
                  suffixIcon: const Icon(Icons.visibility_off_outlined),
                  focusedBorder: OutlineInputBorder(
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
              Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius:
                        const BorderRadiusDirectional.all(Radius.circular(40))),
                child: Center(
                    child: Text(
                  "Login",
                  style: Theme.of(context).textTheme.displayLarge,
                )),
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
