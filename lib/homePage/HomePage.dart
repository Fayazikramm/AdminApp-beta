import 'package:admin_app/homePage/AttandenceUi.dart';
import 'package:admin_app/homePage/drawer/DrawerHeader.dart';
import 'package:admin_app/homePage/drawer/Drawerlist.dart';


import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        
        
        ),
       body:
      Container(
        color: Theme.of(context).colorScheme.background,
        child: Column(
          children: [
            const Column(
      
              children: [
               
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Center(child: AttandenceUi()),
                )
              ],
            )
          ],
        ),
      ),
     drawer: 
       Drawer(
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
