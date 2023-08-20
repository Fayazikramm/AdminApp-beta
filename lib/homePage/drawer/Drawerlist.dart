import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  const DrawerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Column(
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
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {},
            child: Row(
              children: [
                Expanded(
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
          Divider(),
          InkWell(
            onTap: () {},
            child: Row(
              children: [
                Expanded(
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
          Divider(),
          InkWell(
            onTap: () {},
            child: Row(
              children: [
                Expanded(
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
          Divider(),
        ],
      ),
    ));
  }
}