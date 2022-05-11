import 'package:daraz/Pages/AccountInformation.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "setting",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              color: Colors.grey.shade100,
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AccountInformation()));
                },
                title: const Text("Account Information"),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              color: Colors.grey.shade100,
              child: const ListTile(
                title: Text("Address Book"),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              color: Colors.grey.shade100,
              child: const ListTile(
                title: Text("Messages"),
                subtitle: Text("Receive exclusive offers and personal updates"),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              color: Colors.grey.shade100,
              child: const ListTile(
                title: Text("Country"),
                subtitle: Text("Bangladesh is your current country"),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              color: Colors.grey.shade100,
              child: const ListTile(
                title: Text("Languages"),
                subtitle: Text("English"),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              color: Colors.grey.shade100,
              child: const ListTile(
                title: Text("General"),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              color: Colors.grey.shade100,
              child: const ListTile(
                title: Text("Policies"),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              color: Colors.grey.shade100,
              child: const ListTile(
                title: Text("Help"),
              ),
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "LogOut",
                  style: TextStyle(color: Colors.red, fontSize: 20),
                )),
          ],
        ),
      ),
    );
  }
}
