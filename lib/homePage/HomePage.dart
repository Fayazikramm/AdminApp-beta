import 'package:admin_app/homePage/AttandenceUi.dart';
import 'package:admin_app/homePage/topwidget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Theme.of(context).colorScheme.background,
        child: const Column(
          children: [
            TopWidget(),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: AttandenceUi(),
            )
          ],
        ),
      ),
    );
  }
}
