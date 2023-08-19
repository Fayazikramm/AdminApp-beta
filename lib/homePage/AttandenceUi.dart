import 'package:flutter/material.dart';

class AttandenceUi extends StatelessWidget {
  const AttandenceUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Theme.of(context).colorScheme.surface),
      child: Column(
        children: [
          Text(
            "Total Emloyees",
            style: Theme.of(context).textTheme.titleMedium,
          )
        ],
      ),
    );
  }
}
