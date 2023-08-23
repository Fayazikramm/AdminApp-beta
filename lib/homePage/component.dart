import 'package:admin_app/model/CProjects.dart';
import 'package:admin_app/model/Projects.dart';
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
              decoration: BoxDecoration(
                  color: Color(0xe147a04a),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.camera_outdoor_outlined,
                    color: Colors.white,
                  ))),
          SizedBox(
            height: 05,
          ),
          Container(
            height: 35,
            width: 80,
            child: Center(
                child: Text(
              "CCTV",
              textAlign: TextAlign.center,
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
              decoration: BoxDecoration(
                  color: Color(0xe147a04a),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CompOp()));
                  },
                  icon: Icon(
                    Icons.done_all_outlined,
                    color: Colors.white,
                  ))),
          SizedBox(
            height: 05,
          ),
          Container(
            height: 35,
            width: 80,
            child: Center(
                child: Text(
              "Complete Projects",
              textAlign: TextAlign.center,
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
              decoration: BoxDecoration(
                  color: Color(0xe147a04a),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PrOp()));
                  },
                  icon: Icon(
                    Icons.construction_outlined,
                    color: Colors.white,
                  ))),
          SizedBox(
            height: 05,
          ),
          Container(
            height: 35,
            width: 80,
            child: Center(
                child: Text(
              " Projects",
            textAlign: TextAlign.center,
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
              decoration: BoxDecoration(
                  color: Color(0xe147a04a),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.error_outline,
                    color: Colors.white,
                  ))),
          SizedBox(
            height: 05,
          ),
          Container(
            height: 35,
            width: 80,
            child: Center(
                child: Text(
              "Complains",
            textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelSmall,
            )),
          )
        ],
      ),
    ]);
  }
}
