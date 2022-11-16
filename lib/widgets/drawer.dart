import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const imageUrl = "assets/images/ak.jpg";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: const [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Ajitesh Mishra"),
                accountEmail: Text("ajiteshru@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage(imageUrl),
                ),
              ),
            ),
            Divider(
              height: 0,
              thickness: 2,
              color: Colors.white,
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
                size: 30,
              ),
              title: Text(
                "HOME",
                textScaleFactor: 1.4,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
                size: 30,
              ),
              title: Text(
                "PROFILE",
                textScaleFactor: 1.4,
                style: TextStyle(
                  color: Colors.white,

                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
                size: 30,
              ),
              title: Text(
                "EMAIL",
                textScaleFactor: 1.4,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),

          ],

        ),

      ),

    );
  }
}
