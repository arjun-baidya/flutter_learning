import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const imageUrl = "data:image/jpeg;base64,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";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountEmail:Text("arjun@gmailcom"),
              accountName:Text("Arjun baidya"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email Me",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}