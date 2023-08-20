import 'package:flutter/material.dart';

class AttandenceUi extends StatelessWidget {
  const AttandenceUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 320,
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 18),
            child: Text(
              "Total Emloyees",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: Text(
              "60 Emlopyees",
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 2,
            height: 30,
            color: Colors.black12,
            margin: EdgeInsets.symmetric(horizontal: 10),
          ),
          Row(children: [
            SizedBox(
              width: 10,
            ),
            Text(
              'Leave',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: 30,
              height: 2,
              color: Colors.black12,
              margin: EdgeInsets.symmetric(vertical: 10),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              "Present",
              style: Theme.of(context).textTheme.titleMedium,
            ),
             SizedBox(
              width: 15,
            ),
             Container(
              width: 30,
              height: 2,
              color: Colors.black12,
              margin: EdgeInsets.symmetric(vertical: 10),
            ),
          
           Padding(
             padding: const EdgeInsets.only(right: 10,left: 05),
             child: Text(
                " Appoint",
                style: Theme.of(context).textTheme.titleMedium,
              ),
           ),
      
          ]),
          Row(
            children: [
              Text(
                "10 Employees ",
                style: Theme.of(context).textTheme.displaySmall
                
              ),
              SizedBox(
                width: 18,
              ),
              Text(
                "48 Employees",
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
