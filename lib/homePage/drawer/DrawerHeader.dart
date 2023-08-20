import 'package:flutter/material.dart';

class DrawerHead extends StatefulWidget {
  const DrawerHead({super.key});

  @override
  State<DrawerHead> createState() => _DrawerHeadState();
}

class _DrawerHeadState extends State<DrawerHead> {
  @override
  Widget build(BuildContext context) {
    return Container(
color: Theme.of(context).primaryColor,
width: double.infinity,
    height: 200,
    padding: EdgeInsets.only(top: 20.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
Container(
  margin: EdgeInsets.only(bottom: 10),
height: 70,
decoration: BoxDecoration(
  shape: BoxShape.circle,
image: DecorationImage(image: AssetImage('assets/fayaz.jpg'))
),
),
    Text("Fayaz Ikram",style: Theme.of(context).textTheme.titleMedium,),
     Text("Developer",style: TextStyle(fontFamily: "Lato",fontSize: 14,color: Colors.grey[200],
     )
     )
      ],
    ),
    );
  }
}
