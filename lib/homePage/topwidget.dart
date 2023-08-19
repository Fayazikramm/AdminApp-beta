import 'package:flutter/material.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Drawer(
                backgroundColor: Theme.of(context).colorScheme.primary,
              ),
              Text(
                "User Name",
                style: Theme.of(context).textTheme.labelMedium,
              )
            ],
          )
        ],
      ),
    );
  }
}
