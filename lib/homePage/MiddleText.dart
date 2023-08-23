import 'package:flutter/material.dart';

class Middle extends StatelessWidget {
  const Middle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Row(
          children: [
            Container(
              child: const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Completed Projects ",
                  style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 90),
              child: Container(
                child: const Center(
                  child: Text(
                    "View More",
                    style: TextStyle(color: Color(0xff47a04a)),
                  ),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
