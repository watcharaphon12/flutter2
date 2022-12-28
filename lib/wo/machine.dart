import 'package:flutter/material.dart';

class Machine extends StatefulWidget {
  const Machine({Key? key}) : super(key: key);

  @override
  State<Machine> createState() => _MachineState();
}

class _MachineState extends State<Machine> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Item 1'),
            onTap: () { Navigator.pop(context);
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () { Navigator.pop(context);
              // Update the state of the app.
              // ...
            },
          ),
        ],
      ),
    );
  }
}
