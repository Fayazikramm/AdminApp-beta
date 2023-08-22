import 'package:flutter/material.dart';


class Component extends StatefulWidget {
  const Component({Key? key}) : super(key: key);

  @override
  State<Component> createState() => _ComponentState();
}

class _ComponentState extends State<Component> {
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Column(
        children: [
          Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(color: Color(0xe147a04a)),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                 Icons.camera_outdoor_outlined,
                    color: Colors.white,
                  ))),
          Container(
            height: 15,
            width: 60,
            child: Center(child: Text("CCTV",style: Theme.of(context).textTheme.labelSmall,)),
          )
        ],
      ),
      SizedBox(
        width: 10,
      ),
      Column(
        children: [
          Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(color: Color(0xe147a04a)),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.leaderboard_outlined,
                    color: Colors.white,
                  ))),
          Container(
            height: 15,
            width: 60,
            child: Center(child: Text("Leaderboard",
              style: Theme.of(context).textTheme.labelSmall,
            )),
          )
        ],
      ),
      SizedBox(
        width: 10,
      ),
      Column(
        children: [
          Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(color: Color(0xe147a04a)),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.construction_outlined,
                    color: Colors.white,
                  ))),
          Container(
            height: 15,
            width: 60,
            child: Center(child: Text("Projects",
              style: Theme.of(context).textTheme.labelSmall,
            )),
          )
        ],
      ),
      SizedBox(
        width: 10,
      ),
      Column(
        children: [
          Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(color: Color(0xe147a04a)),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.error_outline,
                    color: Colors.white,
                  ))),
          Container(
            height: 15,
            width: 60,
            child: Center(child: Text("Complains",
              style: Theme.of(context).textTheme.labelSmall,
            )),
          )
        ],
      ),
    ]);
  }
}
