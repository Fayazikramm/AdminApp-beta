
import 'package:flutter/material.dart';

class AttandenceUi extends StatelessWidget {
  const AttandenceUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      height: 180,
      width: 320,
      decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(2, 2),
            )
          ],
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        children: [
           const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             const SizedBox(
              height: 20,
             ),
              Text(
                "Today Presence",
                style: Theme.of(context).textTheme.labelMedium,
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
             
             
              Text(
                "Present",
            
                style: Theme.of(context).textTheme.labelMedium,
              ),
const SizedBox(
  width: 72.5,
),
Container(
  height: 70,
width: 2,
color: Colors.black12,
),
      
      const SizedBox(
        width: 72.5,
      ),
         
              Text(
                "Absent",
           
                style: Theme.of(context).textTheme.labelMedium,
              ),
         
            const SizedBox(
    width: 20,
  )
           
            ],
          ),
 
      
     
        ],
      ),
    );
  }
}
