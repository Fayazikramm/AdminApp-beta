import 'package:admin_app/model/AdminEmployees.dart';
import 'package:admin_app/model/ITEmployees.dart';
import 'package:admin_app/model/QSEmployee.dart';
import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  const DrawerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15),
      child: const Column(
        children: [MenuItems()],
      ),
    );
  }
}

class MenuItems extends StatelessWidget {
  const MenuItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ItOp()));
            },
            child: Row(
              children: [
                const Expanded(
                  child: Icon(
                    Icons.computer_outlined,
                  ),
                ),
                Expanded(
                    flex: 3,
                    child: Text(
                      "IT department",
                      style: Theme.of(context).textTheme.labelMedium,
                    ))
              ],
            ),
          ),
          const Divider(),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AdminOp()));
            },
            child: Row(
              children: [
                const Expanded(
                  child: Icon(
                    Icons.manage_accounts,
                  ),
                ),
                Expanded(
                    flex: 3,
                    child: Text(
                      "Admin Department",
                      style: Theme.of(context).textTheme.labelMedium,
                    ))
              ],
            ),
          ),
          const Divider(),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => QsOp()));
            },
            child: Row(
              children: [
                const Expanded(
                  child: Icon(
                    Icons.queue_play_next_outlined,
                  ),
                ),
                Expanded(
                    flex: 3,
                    child: Text(
                      "QS department",
                      style: Theme.of(context).textTheme.labelMedium,
                    ))
              ],
            ),
          ),
          const Divider(),
        ],
      ),
    ));
  }
}
