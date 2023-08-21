import 'package:admin_app/firebase/util.dart';
import 'package:admin_app/login/signup/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'RoundButton.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool loading = false;
  final formKey = GlobalKey<FormState>();
  final emailControler = TextEditingController();
  final passwordControler = TextEditingController();
  FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  void dispose() {
    super.dispose();
    emailControler.dispose();
    passwordControler.dispose();
  }

  void signup() {
    setState(() {
      loading = true;
    });
    _auth
        .createUserWithEmailAndPassword(
            email: emailControler.text.toString(),
            password: passwordControler.text.toString())
        .then((value) {
      setState(() {
        loading = false;
      });
    }).onError((error, stackTrace) {
      utils().toastMessage(error.toString());
      setState(() {
        loading = false;
      });
    });
  }

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
                      text: 'signup',
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
                  child: Form(
                      key: formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: emailControler,
                            decoration: InputDecoration(
                              hintText: 'Email',
                              helperText: 'enter email e,g joan@gmail.com',
                              prefixIcon: Icon(
                                Icons.alternate_email_outlined,
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
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Enter a Email';
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.text,
                            controller: passwordControler,
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Password',
                              prefixIcon: Icon(
                                Icons.password_outlined,
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
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Enter a Password';
                              }
                              return null;
                            },
                          ),
                        ],
                      ))),
              SizedBox(
                height: 100,
              ),
              Roundbutton(
                  tittle: 'Signup',
                  loading: loading,
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      signup();
                    }
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    " Already have an Account? ",
                    style: TextStyle(fontSize: 18),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    },
                    child: const Text(
                      "Login",
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
