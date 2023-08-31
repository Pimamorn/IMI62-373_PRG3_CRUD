// TODO Implement this library.
import 'package:flutter/material.dart';
import 'package:flutter_application_12/main.dart';
import 'package:flutter_application_12/models/configure.dart';
import 'package:flutter_application_12/models/users.dart';
import 'package:flutter_application_12/screens/login.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    String accountName = "N/A";
    String accountEmail = "N/A";
    String accountUrl =
        "https://scontent-sin6-2.xx.fbcdn.net/v/t39.30808-6/364797180_1962414020824430_4756084832556479330_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHuh4gcC0txs3OamQsMYh1fyxI2b48nSFjLEjZvjydIWON8Vd912BS4H4nEjup93lBJdZFAHV-dlBuIUFoEjmWC&_nc_ohc=ALE7L2pU7sEAX8WcswT&_nc_ht=scontent-sin6-2.xx&oh=00_AfBhqikgiJsaRgzP008wT-BwN2eXXrDnElsr9Z5osOMR8Q&oe=64F19907";

    Users user = Configure.login;
    if (user.id != null) {
      accountName = user.fullname!;
      accountEmail = user.email!;
    }
    return Drawer(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(accountName),
              accountEmail: Text(accountEmail),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(accountUrl),
                backgroundColor: Colors.white,
              ),
            ),
            ListTile(
              title: Text("Home"),
              onTap: () {
                Navigator.pushNamed(context, Home.routeName);
              },
            ),
            ListTile(
              title: Text("Login"),
              onTap: () {
                Navigator.pushNamed(context, Login.routeName);
              },
            )
          ]),
    );
  }
}
