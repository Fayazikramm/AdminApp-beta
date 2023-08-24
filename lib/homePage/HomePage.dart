import 'package:admin_app/homePage/AttandenceUi.dart';

import 'package:admin_app/homePage/MiddleText.dart';
import 'package:admin_app/homePage/component.dart';
import 'package:admin_app/homePage/drawer/DrawerHeader.dart';
import 'package:admin_app/homePage/drawer/Drawerlist.dart';
import 'package:admin_app/homePage/grid.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Admin Cr."),
          backgroundColor: Colors.white,
        ),
        body: Container(
          color: Theme.of(context).colorScheme.background,
          child: Column(
            children: [
              const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Center(child: AttandenceUi()),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Component()
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Middle(),
              SizedBox(
                height: 10,
              ),
              Grid(),
            ],
          ),
        ),
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  DrawerHead(),
                  DrawerList(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
