import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const DrawerHeader(
                child: Text(
              "Echop",
              style:  TextStyle(
                fontSize: 30,
              ),
            )),
            const SizedBox(height: 20.0),
            const Text(
              "OVERVIEW",
              style: TextStyle(color: Colors.grey),
            ),
            Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.photo_camera_back),
                  title: const Text(
                    "Main menu",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, "/home");
                  },
                ),
              ],
            ),
              const SizedBox(height: 30.0),
            const Text(
              "DEVICES",
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.grey),
            ),
            ListTile(
              leading: const Icon(Icons.build),
              title: const Text(
                "In Service",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, "/about");
              },
            ),
            ListTile(
              leading: const Icon(Icons.bookmark),
              title: const Text(
                "Reserved",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, "/contact");
              },
            ),
            ListTile(
              leading: const Icon(Icons.construction),
              title: const Text(
                "Repaired",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, "/contact");
              },
            ),
            const SizedBox(height: 30.0),
            const Text(
              "CLIENTS",
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.grey),
            ),
            Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.people),
                  title: const Text(
                    "Client lsit",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, "/contact");
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.assignment_turned_in),
                  title: const Text(
                    "In order",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, "/contact");
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.phone),
                  title: const Text(
                    "Call",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, "/contact");
                  },
                ),
              ],
            ),
            const SizedBox(height: 30.0),
            const Text(
              "OTHERS",
              style: TextStyle(color: Colors.grey),
            ),
            ListTile(
              leading: const Icon(Icons.note),
              title: const Text(
                "Notes",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, "/contact");
              },
            ),
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text(
                "Reminders",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, "/contact");
              },
            ),
            ListTile(
              leading: const Icon(Icons.calendar_month),
              title: const Text(
                "Calendar",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, "/contact");
              },
            ),
          ],
        ),
      ),
    );
  }
}
