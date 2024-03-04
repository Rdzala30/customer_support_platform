import 'package:flutter/material.dart';
import '../Popup_Pages/CreateProject.dart';

class SideNavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Align(
            child: Container(
              padding: EdgeInsets.all(20),
              child: ListTile(
                title: Row(
                  children: [
                    Image(image: AssetImage('assets/CS.png') , height: 44, width: 43),
                    Text('Customer \n Support'),
                  ],
                ),
              ),
            ),
          ),
          ListTile(
            title: Hero(
              tag: "ShowPopUp",
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return CreatePopUp();
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.add, color: Colors.white),
                      Text(
                        'New Project',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Row(
              children: [
                Icon(Icons.cases_outlined),
                Text('Projects'),
              ],
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Row(
              children: [
                Icon(Icons.person_outline_rounded),
                Text('Project Managers'),
              ],
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            hoverColor: Colors.black54,
            title: Row(
              children: [
                Icon(Icons.person_add_alt_outlined),
                Text('Employees'),
              ],
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Row(
              children: [
                Icon(Icons.settings),
                Text('Settings'),
              ],
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
